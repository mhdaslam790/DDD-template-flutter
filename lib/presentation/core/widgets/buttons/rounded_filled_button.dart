import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/presentation/core/styles/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

/// Premium gradient CTA button.
///
/// - Renders a `kBrandGradient` fill by default.
/// - Shows a [CircularProgressIndicator] when [isLoading] is true.
/// - Scales down slightly on press for a tactile micro-animation.
class RoundedFilledButton extends StatefulWidget {
  const RoundedFilledButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.disable = false,
    this.isLoading = false,
    this.arrow = false,
    this.icon,
  });

  final String text;
  final VoidCallback onTap;
  final double? width;
  final bool disable;
  final bool isLoading;
  final bool arrow;
  final IconData? icon;

  @override
  State<RoundedFilledButton> createState() => _RoundedFilledButtonState();
}

class _RoundedFilledButtonState extends State<RoundedFilledButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 80),
    lowerBound: 0.94,
    upperBound: 1.0,
    value: 1.0,
  );

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  bool get _isDisabled => widget.disable || widget.isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _isDisabled
          ? null
          : (_) {
              HapticFeedback.selectionClick();
              _ctrl.reverse();
            },
      onTapUp: _isDisabled
          ? null
          : (_) {
              _ctrl.forward();
              widget.onTap();
            },
      onTapCancel: _isDisabled ? null : () => _ctrl.forward(),
      child: ScaleTransition(
        scale: _ctrl,
        child: Container(
          width: widget.width ?? double.infinity,
          height: 52,
          decoration: BoxDecoration(
            gradient: _isDisabled
                ? null
                : const LinearGradient(
                    colors: [
                      AppColors.gradientStart,
                      AppColors.gradientMid,
                      AppColors.gradientEnd,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
            color: _isDisabled ? AppColors.border : null,
            borderRadius: BorderRadius.circular(14),
            boxShadow: _isDisabled
                ? null
                : [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.35),
                      blurRadius: 20,
                      offset: const Offset(0, 6),
                    ),
                  ],
          ),
          child: Center(
            child: widget.isLoading
                ? const SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
                      color: AppColors.white,
                      strokeWidth: 2.5,
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (widget.icon != null) ...[
                        Icon(widget.icon, color: AppColors.white, size: 18),
                        const SizedBox(width: 8),
                      ],
                      Text(
                        widget.text,
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                          letterSpacing: 0.3,
                        ),
                      ),
                      if (widget.arrow) ...[
                        const SizedBox(width: 6),
                        const Icon(
                          Icons.arrow_forward_rounded,
                          color: AppColors.white,
                          size: 16,
                        ),
                      ],
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
