import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_template/domain/auth/auth_failure.dart';
import 'package:flutter_template/domain/auth/usecases/register_with_email_password.dart';
import 'package:flutter_template/domain/auth/usecases/sign_in_with_email_password.dart';
import 'package:flutter_template/domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final SignInWithEmailPassword _signInWithEmailPassword;
  final RegisterWithEmailPassword _registerWithEmailPassword;

  SignInFormBloc(
    this._signInWithEmailPassword,
    this._registerWithEmailPassword,
  ) : super(SignInFormState.initial()) {
    on<_EmailChanged>((event, emit) {
      emit(state.copyWith(
        emailAddress: EmailAddress(event.emailStr),
        authFailureOrSuccessOption: none(),
      ));
    });

    on<_PasswordChanged>((event, emit) {
      emit(state.copyWith(
        password: Password(event.passwordStr),
        authFailureOrSuccessOption: none(),
      ));
    });

    on<_SignInWithEmailAndPasswordPressed>((event, emit) async {
      await _performActionOnAuthFacadeWithEmailAndPassword(
        _signInWithEmailPassword,
        emit,
      );
    });

    on<_RegisterWithEmailAndPasswordPressed>((event, emit) async {
      await _performActionOnAuthFacadeWithEmailAndPassword(
        _registerWithEmailPassword,
        emit,
      );
    });
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    }) forwardedCall,
    Emitter<SignInFormState> emit,
  ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
