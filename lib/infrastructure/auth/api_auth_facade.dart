import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/auth/i_auth_facade.dart';
import 'package:flutter_template/domain/core/constants/storage_constants.dart';
import 'package:flutter_template/domain/core/helpers/secure_storage.dart';
import 'package:flutter_template/infrastructure/auth/dtos/auth_response_dto.dart';
import 'package:flutter_template/infrastructure/core/network/rest-api/api_request.dart';
import 'package:flutter_template/infrastructure/core/network/rest-api/api_service.dart';

/// REST API implementation of [IAuthFacade].
///
/// - Uses [ApiServiceV2.dioUnauthorizedClient] for public endpoints
///   (login, register, forgot-password) — no auth header needed.
/// - Uses [ApiServiceV2.dioAuthorizedClient] for protected endpoints
///   (update-email, delete-account, /auth/me) — [InterceptorWrapper]
///   automatically injects the Bearer token from SecureStorage.
/// - Delegates all HTTP error handling to [ApiRequest.requestData],
///   which maps Dio exceptions to [CommonFailure].
///
/// Switch from [AuthFacade] (Firebase) to this by changing the annotation:
/// ```dart
/// @LazySingleton(as: IAuthFacade)
/// ```
// @LazySingleton(as: IAuthFacade)
class ApiAuthFacade implements IAuthFacade {
  final ApiServiceV2 _api;
  final Storage _storage;

  ApiAuthFacade(this._api, this._storage);

  // ─── Helpers ──────────────────────────────────────────────────────────────

  Future<void> _saveToken(String token) async {
    await _storage.secureStorage.write(
      key: StorageConstants.userToken,
      value: token,
    );
    await _storage.secureStorage.write(
      key: StorageConstants.loggedIn,
      value: 'true',
    );
  }

  Future<void> _clearToken() async {
    await _storage.secureStorage.delete(key: StorageConstants.userToken);
    await _storage.secureStorage.write(
      key: StorageConstants.loggedIn,
      value: 'false',
    );
  }

  // ─── IAuthFacade ──────────────────────────────────────────────────────────

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    // Public endpoint → unauthorizedClient (no Bearer header)
    final result = await ApiRequest.requestData(
      request: _api.dioUnauthorizedClient.post(
        '/auth/login',
        data: {'email': emailAddress, 'password': password},
      ),
    );

    return result.fold((failure) => left(_toAuthFailure(failure)), (
      response,
    ) async {
      final dto = AuthResponseDto.fromJson(
        response.data as Map<String, dynamic>,
      );
      await _saveToken(dto.accessToken);
      return right(unit);
    });
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    // Public endpoint → unauthorizedClient
    final result = await ApiRequest.requestData(
      request: _api.dioUnauthorizedClient.post(
        '/auth/register',
        data: {'email': emailAddress, 'password': password},
      ),
    );

    return result.fold((failure) => left(_toAuthFailure(failure)), (
      response,
    ) async {
      final dto = AuthResponseDto.fromJson(
        response.data as Map<String, dynamic>,
      );
      await _saveToken(dto.accessToken);
      return right(unit);
    });
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword({
    required String emailAddress,
  }) async {
    // Public endpoint → unauthorizedClient
    final result = await ApiRequest.requestData(
      request: _api.dioUnauthorizedClient.post(
        '/auth/forgot-password',
        data: {'email': emailAddress},
      ),
    );

    return result.fold(
      (failure) => left(_toAuthFailure(failure)),
      (_) => right(unit),
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> updateEmailAddress({
    required String updatedEmail,
  }) async {
    // Protected endpoint → authorizedClient (InterceptorWrapper adds Bearer token)
    final result = await ApiRequest.requestData(
      request: _api.dioAuthorizedClient.patch(
        '/auth/update-email',
        data: {'email': updatedEmail},
      ),
    );

    return result.fold(
      (failure) => left(_toAuthFailure(failure)),
      (_) => right(unit),
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> deleteAccount() async {
    // Protected endpoint → authorizedClient
    final result = await ApiRequest.requestData(
      request: _api.dioAuthorizedClient.delete('/auth/account'),
    );

    return result.fold((failure) => left(_toAuthFailure(failure)), (_) async {
      await _clearToken();
      return right(unit);
    });
  }

  @override
  Future<void> signOut() async {
    // Optionally invalidate the server-side session:
    // await ApiRequest.requestData(
    //   request: _api.dioAuthorizedClient.post('/auth/logout'),
    // );
    await _clearToken();
  }

  @override
  Future<bool> checkAuthState() async {
    final loggedIn = await _storage.secureStorage.read(
      key: StorageConstants.loggedIn,
    );
    if (loggedIn != 'true') return false;

    // Protected endpoint → authorizedClient validates the stored token
    final result = await ApiRequest.requestData(
      request: _api.dioAuthorizedClient.get('/auth/me'),
    );

    return result.isRight();
  }

  // ─── Failure mapping ──────────────────────────────────────────────────────

  /// Maps [CommonFailure] (infrastructure concern) → [AuthFailure] (domain).
  ///
  /// [ApiRequest.requestData] already converts all Dio/HTTP exceptions into
  /// typed [CommonFailure] variants, so the domain stays free of Dio imports.
  AuthFailure _toAuthFailure(Object failure) {
    return switch (failure.runtimeType.toString()) {
      'SessionExpired' => const AuthFailure.sessionExpired(),
      'RequestTimeout' => const AuthFailure.requestTimeout(),
      'NotFound' => const AuthFailure.userNotFound(),
      'BadRequest' => const AuthFailure.serverError('Bad request'),
      _ => const AuthFailure.serverError(
          'An unexpected error occurred. Please try again.',
        ),
    };
  }
}
