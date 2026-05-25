import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/presentation/core/styles/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

/// Theme-aware text field that inherits colours from [AppTheme.inputDecorationTheme].
///
/// Extra features over the base [TextFormField]:
/// - Password visibility toggle (set [obscureText] = true)
/// - Leading [prefixIcon]
/// - Optional floating label above the field (rendered as a separate [Text]
///   so it respects the theme's [TextTheme.bodySmall] colour automatically)
class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.labelText,
    this.initialValue,
    this.onChanged,
    this.decoration,
    this.onTap,
    this.readOnly = false,
    this.autofocus = false,
    this.obscureText = false,
    this.validator,
    this.inputFormatters,
    this.maxLines = 1,
    this.prefixIcon,
  });

  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? initialValue;
  final Function(String)? onChanged;
  final InputDecoration? decoration;
  final VoidCallback? onTap;
  final bool readOnly;
  final bool autofocus;
  final bool obscureText;
  final int maxLines;
  final IconData? prefixIcon;
  final String? Function(String?, BuildContext)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscured = widget.obscureText;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final idTheme = Theme.of(context).inputDecorationTheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Border colour adapts to the active theme
    final borderColor = isDark ? AppColors.border : const Color(0xFFD1D5E8);
    final focusedBorderColor = AppColors.primary;
    final errorBorderColor = AppColors.error;

    // Icon colour — subtle tint, adapts to brightness
    final iconColor = cs.onSurface.withValues(alpha: 0.4);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) ...[
          Text(
            widget.labelText!,
            style: tt.bodySmall?.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          validator: (v) => widget.validator?.call(v, context),
          autofocus: widget.autofocus,
          readOnly: widget.readOnly,
          inputFormatters: widget.inputFormatters,
          onTap: widget.onTap,
          onChanged: widget.onChanged,
          initialValue: widget.initialValue,
          controller: widget.controller,
          // cursor always uses the primary accent colour
          cursorColor: AppColors.primary,
          keyboardType: widget.keyboardType,
          maxLines: widget.obscureText ? 1 : widget.maxLines,
          obscureText: widget.obscureText ? _obscured : false,
          // Text colour: dimmed when read-only, otherwise full onSurface
          style: GoogleFonts.inter(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: widget.readOnly
                ? cs.onSurface.withValues(alpha: 0.45)
                : cs.onSurface,
          ),
          decoration:
              (widget.decoration ?? InputDecoration(hintText: widget.hintText))
                  .copyWith(
            // ── Fill ──────────────────────────────────────────────────
            filled: true,
            // Pull fillColor from the theme so dark=inputFill, light=white
            fillColor: idTheme.fillColor,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 16,
            ),

            // ── Icons ─────────────────────────────────────────────────
            prefixIcon: widget.prefixIcon != null
                ? Icon(widget.prefixIcon, color: iconColor, size: 20)
                : null,
            suffixIcon: widget.obscureText
                ? GestureDetector(
                    onTap: () => setState(() => _obscured = !_obscured),
                    child: Icon(
                      _obscured
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: iconColor,
                      size: 20,
                    ),
                  )
                : null,

            // ── Borders ───────────────────────────────────────────────
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: borderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: focusedBorderColor, width: 1.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: errorBorderColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: errorBorderColor, width: 1.5),
            ),

            // ── Text styles ───────────────────────────────────────────
            // Pull hint/label colours from the theme's inputDecorationTheme
            hintStyle: idTheme.hintStyle,
            labelStyle: idTheme.labelStyle,
            errorStyle: GoogleFonts.inter(
              color: AppColors.error,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
