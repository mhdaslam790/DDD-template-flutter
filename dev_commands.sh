#!/bin/bash
# 1. Resolve packages FIRST — so dart format / dart fix can read analysis_options.yaml
flutter pub get

# 2. Format all the files (no more flutter_lints resolution warnings)
dart format .

# 3. Fix dart language warnings which can be automatically fixed
dart fix --apply

# 4. Updates the launcher icons
flutter pub run flutter_launcher_icons

# 5. Generates freezed files, assets paths, routes, etc.
flutter pub run build_runner build --delete-conflicting-outputs

# 6. Run to change the app package name
flutter pub run change_app_package_name:main com.example.flutter_template

# 7. Generates the native splash screen
flutter pub run flutter_native_splash:create