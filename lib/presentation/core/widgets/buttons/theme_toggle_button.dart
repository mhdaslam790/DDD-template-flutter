import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/presentation/core/styles/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

/// Animated toggle that cycles Dark → Light → System and dispatches
/// [SettingsEvent.changeAppThemeMode] via the ambient [SettingsBloc].
///
/// Drop it anywhere you need theme switching:
/// ```dart
/// const ThemeToggleButton()           // icon-only
/// const ThemeToggleButton(showLabel: true) // icon + label
/// ```
class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key, this.showLabel = false});

  /// Whether to show a text label next to the icon.
  final bool showLabel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      buildWhen: (prev, next) => prev.appThemeMode != next.appThemeMode,
      builder: (context, state) {
        final mode = state.appThemeMode;
        return _ThemeToggleTile(
          currentMode: mode,
          showLabel: showLabel,
          onTap: () {
            HapticFeedback.selectionClick();
            final next = _next(mode);
            context.read<SettingsBloc>().add(
                  SettingsEvent.changeAppThemeMode(next),
                );
          },
        );
      },
    );
  }

  static ThemeMode _next(ThemeMode current) => switch (current) {
        ThemeMode.dark => ThemeMode.light,
        ThemeMode.light => ThemeMode.system,
        ThemeMode.system => ThemeMode.dark,
      };
}

class _ThemeToggleTile extends StatefulWidget {
  const _ThemeToggleTile({
    required this.currentMode,
    required this.onTap,
    required this.showLabel,
  });
  final ThemeMode currentMode;
  final VoidCallback onTap;
  final bool showLabel;

  @override
  State<_ThemeToggleTile> createState() => _ThemeToggleTileState();
}

class _ThemeToggleTileState extends State<_ThemeToggleTile>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );
  late final Animation<double> _rotate = CurvedAnimation(
    parent: _ctrl,
    curve: Curves.easeInOut,
  );

  @override
  void didUpdateWidget(_ThemeToggleTile old) {
    super.didUpdateWidget(old);
    if (old.currentMode != widget.currentMode) {
      _ctrl.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  (IconData, String, Color) get _meta => switch (widget.currentMode) {
        ThemeMode.dark => (Icons.dark_mode_rounded, 'Dark', AppColors.primary),
        ThemeMode.light => (
            Icons.light_mode_rounded,
            'Light',
            const Color(0xFFFFB547),
          ),
        ThemeMode.system => (
            Icons.brightness_auto_rounded,
            'System',
            AppColors.accent,
          ),
      };

  @override
  Widget build(BuildContext context) {
    final (icon, label, color) = _meta;
    final cs = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(
          horizontal: widget.showLabel ? 14 : 10,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color.withValues(alpha: 0.4)),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: 0.15),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            RotationTransition(
              turns: _rotate,
              child: Icon(icon, color: color, size: 18),
            ),
            if (widget.showLabel) ...[
              const SizedBox(width: 8),
              Text(
                label,
                style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
