import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/auth/usecases/check_auth_state.dart';
import 'package:flutter_template/domain/auth/usecases/delete_account.dart';
import 'package:flutter_template/domain/auth/usecases/register_with_email_password.dart';
import 'package:flutter_template/domain/auth/usecases/reset_password.dart';
import 'package:flutter_template/domain/auth/usecases/sign_in_with_email_password.dart';
import 'package:flutter_template/domain/auth/usecases/sign_out.dart';
import 'package:flutter_template/domain/auth/usecases/update_email.dart';
import 'package:flutter_template/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInWithEmailPassword _signInWithEmailPassword;
  final RegisterWithEmailPassword _registerWithEmailPassword;
  final SignOut _signOut;
  final CheckAuthState _checkAuthState;
  final DeleteAccount _deleteAccount;
  final UpdateEmail _updateEmail;
  final ResetPassword _resetPassword;

  AuthBloc(
    this._signInWithEmailPassword,
    this._registerWithEmailPassword,
    this._signOut,
    this._checkAuthState,
    this._deleteAccount,
    this._updateEmail,
    this._resetPassword,
  ) : super(AuthState.initial()) {
    on<_CheckAuthState>((event, emit) async {
      emit(state.copyWith(isUserSignedin: false));
      final bool isUserSignedIn = await _checkAuthState();
      emit(state.copyWith(isUserSignedin: isUserSignedIn));
    });

    on<_SignInWithEmailAndPassword>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isUserSignedin: false,
          deleteAccountFailureOrSuccessOption: none(),
          emailSendFailureOrSuccessOption: none(),
          authFailureOrSuccessOption: none(),
          updateEmailFailureOrSuccessOption: none(),
        ),
      );

      final opt = await _signInWithEmailPassword(
        emailAddress: event.emailAddress,
        password: event.password,
      );

      emit(
        opt.fold(
          (l) => state.copyWith(
            isLoading: false,
            isUserSignedin: false,
            authFailureOrSuccessOption: some(left(l)),
          ),
          (r) => state.copyWith(
            isLoading: false,
            isUserSignedin: true,
            authFailureOrSuccessOption: some(right(unit)),
          ),
        ),
      );
    });

    on<_RegisterWithEmailAndPassword>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isUserSignedin: false,
          deleteAccountFailureOrSuccessOption: none(),
          emailSendFailureOrSuccessOption: none(),
          authFailureOrSuccessOption: none(),
          updateEmailFailureOrSuccessOption: none(),
        ),
      );

      final opt = await _registerWithEmailPassword(
        emailAddress: event.emailAddress,
        password: event.password,
      );

      emit(
        opt.fold(
          (l) => state.copyWith(
            isLoading: false,
            isUserSignedin: false,
            authFailureOrSuccessOption: some(left(l)),
          ),
          (r) => state.copyWith(
            isLoading: false,
            isUserSignedin: true,
            authFailureOrSuccessOption: some(right(unit)),
          ),
        ),
      );
    });

    on<_SignOut>((event, emit) async {
      await _signOut();
      emit(state.copyWith(isUserSignedin: false));
    });

    on<_DeleteAccount>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          deleteAccountFailureOrSuccessOption: none(),
        ),
      );

      final opt = await _deleteAccount();

      emit(
        state.copyWith(
          isLoading: false,
          deleteAccountFailureOrSuccessOption: some(opt),
        ),
      );
    });

    on<_UpdateEmailAddress>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          updateEmailFailureOrSuccessOption: none(),
        ),
      );

      final opt = await _updateEmail(newEmailAddress: event.emailAddress);

      emit(
        state.copyWith(
          isLoading: false,
          updateEmailFailureOrSuccessOption: some(opt),
        ),
      );
    });

    on<_SendEmailConfirmation>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          emailSendFailureOrSuccessOption: none(),
        ),
      );

      final opt = await _resetPassword(emailAddress: event.emailAddress);

      emit(
        state.copyWith(
          isLoading: false,
          emailSendFailureOrSuccessOption: some(opt),
        ),
      );
    });

    on<_UpdateConnectivityStatus>((event, emit) {
      emit(
        state.copyWith(
          isNetworkAvailable: event.status != ConnectivityResult.none,
        ),
      );
    });

    on<_CheckConnectivityStatus>((event, emit) async {
      final connectivityResult = await Connectivity().checkConnectivity();
      emit(
        state.copyWith(
          isNetworkAvailable: connectivityResult != ConnectivityResult.none,
        ),
      );
    });
  }
}
