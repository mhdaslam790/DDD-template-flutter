import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_dto.freezed.dart';
part 'auth_response_dto.g.dart';

/// DTO for the authentication response from the REST API.
///
/// Maps the raw JSON payload (`access_token`, `refresh_token`, `expires_in`)
/// to a typed Dart object.  Only used in Infrastructure — the Domain layer
/// only ever sees domain entities and value objects.
@freezed
abstract class AuthResponseDto with _$AuthResponseDto {
  const AuthResponseDto._();

  const factory AuthResponseDto({
    /// JWT access token returned by the server.
    @JsonKey(name: 'access_token') required String accessToken,

    /// Optional refresh token for silent token renewal.
    @JsonKey(name: 'refresh_token') String? refreshToken,

    /// Seconds until [accessToken] expires.
    @JsonKey(name: 'expires_in') int? expiresIn,
  }) = _AuthResponseDto;

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDtoFromJson(json);
}
