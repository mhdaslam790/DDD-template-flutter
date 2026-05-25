part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    required ThemeMode appThemeMode,
    required int fontSize,
  }) = _SettingsState;
  factory SettingsState.initial() =>
      const SettingsState(appThemeMode: ThemeMode.system, fontSize: 12);
}
