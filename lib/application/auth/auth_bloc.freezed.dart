// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress, Password password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(EmailAddress emailAddress) sendEmailConfirmation,
    required TResult Function() deleteAcccount,
    required TResult Function(EmailAddress emailAddress) updateEmailAddress,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult? Function()? deleteAcccount,
    TResult? Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult Function()? deleteAcccount,
    TResult Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_SendEmailConfirmation value)
        sendEmailConfirmation,
    required TResult Function(_DeleteAccount value) deleteAcccount,
    required TResult Function(_UpdateEmailAddress value) updateEmailAddress,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult? Function(_DeleteAccount value)? deleteAcccount,
    TResult? Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult Function(_DeleteAccount value)? deleteAcccount,
    TResult Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordImplCopyWith(
          _$RegisterWithEmailAndPasswordImpl value,
          $Res Function(_$RegisterWithEmailAndPasswordImpl) then) =
      __$$RegisterWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailAddress emailAddress, Password password});
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterWithEmailAndPasswordImpl>
    implements _$$RegisterWithEmailAndPasswordImplCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordImplCopyWithImpl(
      _$RegisterWithEmailAndPasswordImpl _value,
      $Res Function(_$RegisterWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$RegisterWithEmailAndPasswordImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$RegisterWithEmailAndPasswordImpl
    implements _RegisterWithEmailAndPassword {
  const _$RegisterWithEmailAndPasswordImpl(
      {required this.emailAddress, required this.password});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString() {
    return 'AuthEvent.registerWithEmailAndPassword(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPasswordImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterWithEmailAndPasswordImplCopyWith<
          _$RegisterWithEmailAndPasswordImpl>
      get copyWith => __$$RegisterWithEmailAndPasswordImplCopyWithImpl<
          _$RegisterWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress, Password password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(EmailAddress emailAddress) sendEmailConfirmation,
    required TResult Function() deleteAcccount,
    required TResult Function(EmailAddress emailAddress) updateEmailAddress,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return registerWithEmailAndPassword(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult? Function()? deleteAcccount,
    TResult? Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return registerWithEmailAndPassword?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult Function()? deleteAcccount,
    TResult Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_SendEmailConfirmation value)
        sendEmailConfirmation,
    required TResult Function(_DeleteAccount value) deleteAcccount,
    required TResult Function(_UpdateEmailAddress value) updateEmailAddress,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult? Function(_DeleteAccount value)? deleteAcccount,
    TResult? Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return registerWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult Function(_DeleteAccount value)? deleteAcccount,
    TResult Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPassword implements AuthEvent {
  const factory _RegisterWithEmailAndPassword(
      {required final EmailAddress emailAddress,
      required final Password password}) = _$RegisterWithEmailAndPasswordImpl;

  EmailAddress get emailAddress;
  Password get password;
  @JsonKey(ignore: true)
  _$$RegisterWithEmailAndPasswordImplCopyWith<
          _$RegisterWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordImplCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordImplCopyWith(
          _$SignInWithEmailAndPasswordImpl value,
          $Res Function(_$SignInWithEmailAndPasswordImpl) then) =
      __$$SignInWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailAddress emailAddress, Password password});
}

/// @nodoc
class __$$SignInWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithEmailAndPasswordImpl>
    implements _$$SignInWithEmailAndPasswordImplCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordImplCopyWithImpl(
      _$SignInWithEmailAndPasswordImpl _value,
      $Res Function(_$SignInWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$SignInWithEmailAndPasswordImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$SignInWithEmailAndPasswordImpl implements _SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPasswordImpl(
      {required this.emailAddress, required this.password});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString() {
    return 'AuthEvent.signInWithEmailAndPassword(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPasswordImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithEmailAndPasswordImplCopyWith<_$SignInWithEmailAndPasswordImpl>
      get copyWith => __$$SignInWithEmailAndPasswordImplCopyWithImpl<
          _$SignInWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress, Password password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(EmailAddress emailAddress) sendEmailConfirmation,
    required TResult Function() deleteAcccount,
    required TResult Function(EmailAddress emailAddress) updateEmailAddress,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return signInWithEmailAndPassword(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult? Function()? deleteAcccount,
    TResult? Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return signInWithEmailAndPassword?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult Function()? deleteAcccount,
    TResult Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_SendEmailConfirmation value)
        sendEmailConfirmation,
    required TResult Function(_DeleteAccount value) deleteAcccount,
    required TResult Function(_UpdateEmailAddress value) updateEmailAddress,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult? Function(_DeleteAccount value)? deleteAcccount,
    TResult? Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult Function(_DeleteAccount value)? deleteAcccount,
    TResult Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPassword implements AuthEvent {
  const factory _SignInWithEmailAndPassword(
      {required final EmailAddress emailAddress,
      required final Password password}) = _$SignInWithEmailAndPasswordImpl;

  EmailAddress get emailAddress;
  Password get password;
  @JsonKey(ignore: true)
  _$$SignInWithEmailAndPasswordImplCopyWith<_$SignInWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress, Password password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(EmailAddress emailAddress) sendEmailConfirmation,
    required TResult Function() deleteAcccount,
    required TResult Function(EmailAddress emailAddress) updateEmailAddress,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult? Function()? deleteAcccount,
    TResult? Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult Function()? deleteAcccount,
    TResult Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_SendEmailConfirmation value)
        sendEmailConfirmation,
    required TResult Function(_DeleteAccount value) deleteAcccount,
    required TResult Function(_UpdateEmailAddress value) updateEmailAddress,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult? Function(_DeleteAccount value)? deleteAcccount,
    TResult? Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult Function(_DeleteAccount value)? deleteAcccount,
    TResult Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$CheckAuthStateImplCopyWith<$Res> {
  factory _$$CheckAuthStateImplCopyWith(_$CheckAuthStateImpl value,
          $Res Function(_$CheckAuthStateImpl) then) =
      __$$CheckAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthStateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthStateImpl>
    implements _$$CheckAuthStateImplCopyWith<$Res> {
  __$$CheckAuthStateImplCopyWithImpl(
      _$CheckAuthStateImpl _value, $Res Function(_$CheckAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAuthStateImpl implements _CheckAuthState {
  const _$CheckAuthStateImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAuthState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress, Password password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(EmailAddress emailAddress) sendEmailConfirmation,
    required TResult Function() deleteAcccount,
    required TResult Function(EmailAddress emailAddress) updateEmailAddress,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return checkAuthState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult? Function()? deleteAcccount,
    TResult? Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return checkAuthState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult Function()? deleteAcccount,
    TResult Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (checkAuthState != null) {
      return checkAuthState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_SendEmailConfirmation value)
        sendEmailConfirmation,
    required TResult Function(_DeleteAccount value) deleteAcccount,
    required TResult Function(_UpdateEmailAddress value) updateEmailAddress,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return checkAuthState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult? Function(_DeleteAccount value)? deleteAcccount,
    TResult? Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return checkAuthState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult Function(_DeleteAccount value)? deleteAcccount,
    TResult Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (checkAuthState != null) {
      return checkAuthState(this);
    }
    return orElse();
  }
}

abstract class _CheckAuthState implements AuthEvent {
  const factory _CheckAuthState() = _$CheckAuthStateImpl;
}

/// @nodoc
abstract class _$$SendEmailConfirmationImplCopyWith<$Res> {
  factory _$$SendEmailConfirmationImplCopyWith(
          _$SendEmailConfirmationImpl value,
          $Res Function(_$SendEmailConfirmationImpl) then) =
      __$$SendEmailConfirmationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailAddress emailAddress});
}

/// @nodoc
class __$$SendEmailConfirmationImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendEmailConfirmationImpl>
    implements _$$SendEmailConfirmationImplCopyWith<$Res> {
  __$$SendEmailConfirmationImplCopyWithImpl(_$SendEmailConfirmationImpl _value,
      $Res Function(_$SendEmailConfirmationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
  }) {
    return _then(_$SendEmailConfirmationImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc

class _$SendEmailConfirmationImpl implements _SendEmailConfirmation {
  const _$SendEmailConfirmationImpl({required this.emailAddress});

  @override
  final EmailAddress emailAddress;

  @override
  String toString() {
    return 'AuthEvent.sendEmailConfirmation(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEmailConfirmationImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEmailConfirmationImplCopyWith<_$SendEmailConfirmationImpl>
      get copyWith => __$$SendEmailConfirmationImplCopyWithImpl<
          _$SendEmailConfirmationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress, Password password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(EmailAddress emailAddress) sendEmailConfirmation,
    required TResult Function() deleteAcccount,
    required TResult Function(EmailAddress emailAddress) updateEmailAddress,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return sendEmailConfirmation(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult? Function()? deleteAcccount,
    TResult? Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return sendEmailConfirmation?.call(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult Function()? deleteAcccount,
    TResult Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (sendEmailConfirmation != null) {
      return sendEmailConfirmation(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_SendEmailConfirmation value)
        sendEmailConfirmation,
    required TResult Function(_DeleteAccount value) deleteAcccount,
    required TResult Function(_UpdateEmailAddress value) updateEmailAddress,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return sendEmailConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult? Function(_DeleteAccount value)? deleteAcccount,
    TResult? Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return sendEmailConfirmation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult Function(_DeleteAccount value)? deleteAcccount,
    TResult Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (sendEmailConfirmation != null) {
      return sendEmailConfirmation(this);
    }
    return orElse();
  }
}

abstract class _SendEmailConfirmation implements AuthEvent {
  const factory _SendEmailConfirmation(
      {required final EmailAddress emailAddress}) = _$SendEmailConfirmationImpl;

  EmailAddress get emailAddress;
  @JsonKey(ignore: true)
  _$$SendEmailConfirmationImplCopyWith<_$SendEmailConfirmationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAccountImplCopyWith<$Res> {
  factory _$$DeleteAccountImplCopyWith(
          _$DeleteAccountImpl value, $Res Function(_$DeleteAccountImpl) then) =
      __$$DeleteAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAccountImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$DeleteAccountImpl>
    implements _$$DeleteAccountImplCopyWith<$Res> {
  __$$DeleteAccountImplCopyWithImpl(
      _$DeleteAccountImpl _value, $Res Function(_$DeleteAccountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAccountImpl implements _DeleteAccount {
  const _$DeleteAccountImpl();

  @override
  String toString() {
    return 'AuthEvent.deleteAcccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress, Password password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(EmailAddress emailAddress) sendEmailConfirmation,
    required TResult Function() deleteAcccount,
    required TResult Function(EmailAddress emailAddress) updateEmailAddress,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return deleteAcccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult? Function()? deleteAcccount,
    TResult? Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return deleteAcccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult Function()? deleteAcccount,
    TResult Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (deleteAcccount != null) {
      return deleteAcccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_SendEmailConfirmation value)
        sendEmailConfirmation,
    required TResult Function(_DeleteAccount value) deleteAcccount,
    required TResult Function(_UpdateEmailAddress value) updateEmailAddress,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return deleteAcccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult? Function(_DeleteAccount value)? deleteAcccount,
    TResult? Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return deleteAcccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult Function(_DeleteAccount value)? deleteAcccount,
    TResult Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (deleteAcccount != null) {
      return deleteAcccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccount implements AuthEvent {
  const factory _DeleteAccount() = _$DeleteAccountImpl;
}

/// @nodoc
abstract class _$$UpdateEmailAddressImplCopyWith<$Res> {
  factory _$$UpdateEmailAddressImplCopyWith(_$UpdateEmailAddressImpl value,
          $Res Function(_$UpdateEmailAddressImpl) then) =
      __$$UpdateEmailAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailAddress emailAddress});
}

/// @nodoc
class __$$UpdateEmailAddressImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateEmailAddressImpl>
    implements _$$UpdateEmailAddressImplCopyWith<$Res> {
  __$$UpdateEmailAddressImplCopyWithImpl(_$UpdateEmailAddressImpl _value,
      $Res Function(_$UpdateEmailAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
  }) {
    return _then(_$UpdateEmailAddressImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc

class _$UpdateEmailAddressImpl implements _UpdateEmailAddress {
  const _$UpdateEmailAddressImpl({required this.emailAddress});

  @override
  final EmailAddress emailAddress;

  @override
  String toString() {
    return 'AuthEvent.updateEmailAddress(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmailAddressImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmailAddressImplCopyWith<_$UpdateEmailAddressImpl> get copyWith =>
      __$$UpdateEmailAddressImplCopyWithImpl<_$UpdateEmailAddressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress, Password password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(EmailAddress emailAddress) sendEmailConfirmation,
    required TResult Function() deleteAcccount,
    required TResult Function(EmailAddress emailAddress) updateEmailAddress,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return updateEmailAddress(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult? Function()? deleteAcccount,
    TResult? Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return updateEmailAddress?.call(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult Function()? deleteAcccount,
    TResult Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (updateEmailAddress != null) {
      return updateEmailAddress(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_SendEmailConfirmation value)
        sendEmailConfirmation,
    required TResult Function(_DeleteAccount value) deleteAcccount,
    required TResult Function(_UpdateEmailAddress value) updateEmailAddress,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return updateEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult? Function(_DeleteAccount value)? deleteAcccount,
    TResult? Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return updateEmailAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult Function(_DeleteAccount value)? deleteAcccount,
    TResult Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (updateEmailAddress != null) {
      return updateEmailAddress(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmailAddress implements AuthEvent {
  const factory _UpdateEmailAddress(
      {required final EmailAddress emailAddress}) = _$UpdateEmailAddressImpl;

  EmailAddress get emailAddress;
  @JsonKey(ignore: true)
  _$$UpdateEmailAddressImplCopyWith<_$UpdateEmailAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateConnectivityStatusImplCopyWith<$Res> {
  factory _$$UpdateConnectivityStatusImplCopyWith(
          _$UpdateConnectivityStatusImpl value,
          $Res Function(_$UpdateConnectivityStatusImpl) then) =
      __$$UpdateConnectivityStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectivityResult status});
}

/// @nodoc
class __$$UpdateConnectivityStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateConnectivityStatusImpl>
    implements _$$UpdateConnectivityStatusImplCopyWith<$Res> {
  __$$UpdateConnectivityStatusImplCopyWithImpl(
      _$UpdateConnectivityStatusImpl _value,
      $Res Function(_$UpdateConnectivityStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateConnectivityStatusImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$UpdateConnectivityStatusImpl implements _UpdateConnectivityStatus {
  const _$UpdateConnectivityStatusImpl(this.status);

  @override
  final ConnectivityResult status;

  @override
  String toString() {
    return 'AuthEvent.updateConnectivityStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConnectivityStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConnectivityStatusImplCopyWith<_$UpdateConnectivityStatusImpl>
      get copyWith => __$$UpdateConnectivityStatusImplCopyWithImpl<
          _$UpdateConnectivityStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress, Password password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(EmailAddress emailAddress) sendEmailConfirmation,
    required TResult Function() deleteAcccount,
    required TResult Function(EmailAddress emailAddress) updateEmailAddress,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return updateConnectivityStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult? Function()? deleteAcccount,
    TResult? Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return updateConnectivityStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult Function()? deleteAcccount,
    TResult Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (updateConnectivityStatus != null) {
      return updateConnectivityStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_SendEmailConfirmation value)
        sendEmailConfirmation,
    required TResult Function(_DeleteAccount value) deleteAcccount,
    required TResult Function(_UpdateEmailAddress value) updateEmailAddress,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return updateConnectivityStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult? Function(_DeleteAccount value)? deleteAcccount,
    TResult? Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return updateConnectivityStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult Function(_DeleteAccount value)? deleteAcccount,
    TResult Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (updateConnectivityStatus != null) {
      return updateConnectivityStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateConnectivityStatus implements AuthEvent {
  const factory _UpdateConnectivityStatus(final ConnectivityResult status) =
      _$UpdateConnectivityStatusImpl;

  ConnectivityResult get status;
  @JsonKey(ignore: true)
  _$$UpdateConnectivityStatusImplCopyWith<_$UpdateConnectivityStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckConnectivityStatusImplCopyWith<$Res> {
  factory _$$CheckConnectivityStatusImplCopyWith(
          _$CheckConnectivityStatusImpl value,
          $Res Function(_$CheckConnectivityStatusImpl) then) =
      __$$CheckConnectivityStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckConnectivityStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckConnectivityStatusImpl>
    implements _$$CheckConnectivityStatusImplCopyWith<$Res> {
  __$$CheckConnectivityStatusImplCopyWithImpl(
      _$CheckConnectivityStatusImpl _value,
      $Res Function(_$CheckConnectivityStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckConnectivityStatusImpl implements _CheckConnectivityStatus {
  const _$CheckConnectivityStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkConnectivityStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckConnectivityStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress, Password password)
        registerWithEmailAndPassword,
    required TResult Function(EmailAddress emailAddress, Password password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(EmailAddress emailAddress) sendEmailConfirmation,
    required TResult Function() deleteAcccount,
    required TResult Function(EmailAddress emailAddress) updateEmailAddress,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return checkConnectivityStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult? Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult? Function()? deleteAcccount,
    TResult? Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return checkConnectivityStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress, Password password)?
        registerWithEmailAndPassword,
    TResult Function(EmailAddress emailAddress, Password password)?
        signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(EmailAddress emailAddress)? sendEmailConfirmation,
    TResult Function()? deleteAcccount,
    TResult Function(EmailAddress emailAddress)? updateEmailAddress,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (checkConnectivityStatus != null) {
      return checkConnectivityStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_SendEmailConfirmation value)
        sendEmailConfirmation,
    required TResult Function(_DeleteAccount value) deleteAcccount,
    required TResult Function(_UpdateEmailAddress value) updateEmailAddress,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return checkConnectivityStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult? Function(_DeleteAccount value)? deleteAcccount,
    TResult? Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return checkConnectivityStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_SendEmailConfirmation value)? sendEmailConfirmation,
    TResult Function(_DeleteAccount value)? deleteAcccount,
    TResult Function(_UpdateEmailAddress value)? updateEmailAddress,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (checkConnectivityStatus != null) {
      return checkConnectivityStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckConnectivityStatus implements AuthEvent {
  const factory _CheckConnectivityStatus() = _$CheckConnectivityStatusImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isUserSignedin => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get deleteAccountFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get emailSendFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get updateEmailFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isNetworkAvailable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isUserSignedin,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> deleteAccountFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> emailSendFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> updateEmailFailureOrSuccessOption,
      bool isNetworkAvailable});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUserSignedin = null,
    Object? authFailureOrSuccessOption = null,
    Object? deleteAccountFailureOrSuccessOption = null,
    Object? emailSendFailureOrSuccessOption = null,
    Object? updateEmailFailureOrSuccessOption = null,
    Object? isNetworkAvailable = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserSignedin: null == isUserSignedin
          ? _value.isUserSignedin
          : isUserSignedin // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      deleteAccountFailureOrSuccessOption: null ==
              deleteAccountFailureOrSuccessOption
          ? _value.deleteAccountFailureOrSuccessOption
          : deleteAccountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      emailSendFailureOrSuccessOption: null == emailSendFailureOrSuccessOption
          ? _value.emailSendFailureOrSuccessOption
          : emailSendFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      updateEmailFailureOrSuccessOption: null ==
              updateEmailFailureOrSuccessOption
          ? _value.updateEmailFailureOrSuccessOption
          : updateEmailFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      isNetworkAvailable: null == isNetworkAvailable
          ? _value.isNetworkAvailable
          : isNetworkAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isUserSignedin,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> deleteAccountFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> emailSendFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> updateEmailFailureOrSuccessOption,
      bool isNetworkAvailable});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUserSignedin = null,
    Object? authFailureOrSuccessOption = null,
    Object? deleteAccountFailureOrSuccessOption = null,
    Object? emailSendFailureOrSuccessOption = null,
    Object? updateEmailFailureOrSuccessOption = null,
    Object? isNetworkAvailable = null,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserSignedin: null == isUserSignedin
          ? _value.isUserSignedin
          : isUserSignedin // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      deleteAccountFailureOrSuccessOption: null ==
              deleteAccountFailureOrSuccessOption
          ? _value.deleteAccountFailureOrSuccessOption
          : deleteAccountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      emailSendFailureOrSuccessOption: null == emailSendFailureOrSuccessOption
          ? _value.emailSendFailureOrSuccessOption
          : emailSendFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      updateEmailFailureOrSuccessOption: null ==
              updateEmailFailureOrSuccessOption
          ? _value.updateEmailFailureOrSuccessOption
          : updateEmailFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      isNetworkAvailable: null == isNetworkAvailable
          ? _value.isNetworkAvailable
          : isNetworkAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.isLoading,
      required this.isUserSignedin,
      required this.authFailureOrSuccessOption,
      required this.deleteAccountFailureOrSuccessOption,
      required this.emailSendFailureOrSuccessOption,
      required this.updateEmailFailureOrSuccessOption,
      required this.isNetworkAvailable});

  @override
  final bool isLoading;
  @override
  final bool isUserSignedin;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, Unit>> deleteAccountFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, Unit>> emailSendFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, Unit>> updateEmailFailureOrSuccessOption;
  @override
  final bool isNetworkAvailable;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isUserSignedin: $isUserSignedin, authFailureOrSuccessOption: $authFailureOrSuccessOption, deleteAccountFailureOrSuccessOption: $deleteAccountFailureOrSuccessOption, emailSendFailureOrSuccessOption: $emailSendFailureOrSuccessOption, updateEmailFailureOrSuccessOption: $updateEmailFailureOrSuccessOption, isNetworkAvailable: $isNetworkAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isUserSignedin, isUserSignedin) ||
                other.isUserSignedin == isUserSignedin) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption) &&
            (identical(other.deleteAccountFailureOrSuccessOption,
                    deleteAccountFailureOrSuccessOption) ||
                other.deleteAccountFailureOrSuccessOption ==
                    deleteAccountFailureOrSuccessOption) &&
            (identical(other.emailSendFailureOrSuccessOption,
                    emailSendFailureOrSuccessOption) ||
                other.emailSendFailureOrSuccessOption ==
                    emailSendFailureOrSuccessOption) &&
            (identical(other.updateEmailFailureOrSuccessOption,
                    updateEmailFailureOrSuccessOption) ||
                other.updateEmailFailureOrSuccessOption ==
                    updateEmailFailureOrSuccessOption) &&
            (identical(other.isNetworkAvailable, isNetworkAvailable) ||
                other.isNetworkAvailable == isNetworkAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isUserSignedin,
      authFailureOrSuccessOption,
      deleteAccountFailureOrSuccessOption,
      emailSendFailureOrSuccessOption,
      updateEmailFailureOrSuccessOption,
      isNetworkAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isLoading,
      required final bool isUserSignedin,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption,
      required final Option<Either<AuthFailure, Unit>>
          deleteAccountFailureOrSuccessOption,
      required final Option<Either<AuthFailure, Unit>>
          emailSendFailureOrSuccessOption,
      required final Option<Either<AuthFailure, Unit>>
          updateEmailFailureOrSuccessOption,
      required final bool isNetworkAvailable}) = _$AuthStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isUserSignedin;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  Option<Either<AuthFailure, Unit>> get deleteAccountFailureOrSuccessOption;
  @override
  Option<Either<AuthFailure, Unit>> get emailSendFailureOrSuccessOption;
  @override
  Option<Either<AuthFailure, Unit>> get updateEmailFailureOrSuccessOption;
  @override
  bool get isNetworkAvailable;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
