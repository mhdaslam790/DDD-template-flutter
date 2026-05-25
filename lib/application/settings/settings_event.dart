part of 'settings_bloc.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.changeAppThemeMode(ThemeMode themeMode) =
      _ChangeAppTheme;
}
