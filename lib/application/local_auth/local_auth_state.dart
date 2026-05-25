part of 'local_auth_bloc.dart';

@freezed
abstract class LocalAuthState with _$LocalAuthState {
  const factory LocalAuthState.initial() = _Initial;
}
