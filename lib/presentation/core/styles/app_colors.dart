import 'package:flutter/material.dart';

/// Design-system color tokens.
///
/// Palette: deep navy/indigo background + neon violet-to-cyan gradient accent.
class AppColors {
  AppColors._();

  // ── Backgrounds ────────────────────────────────────────────────────────────
  static const Color scaffoldDark = Color(0xFF0A0E1A); // deep navy
  static const Color surfaceDark = Color(0xFF111827); // card/panel
  static const Color surfaceCard = Color(0xFF1C2333); // elevated card
  static const Color inputFill = Color(0xFF151D2E); // text-field fill

  // ── Brand / Accent ─────────────────────────────────────────────────────────
  static const Color primary = Color(0xFF6C63FF); // indigo-violet
  static const Color primaryLight = Color(0xFF9D97FF); // lighter tint
  static const Color accent = Color(0xFF00D4FF); // neon cyan
  static const Color accentGlow = Color(0x3300D4FF); // glow layer

  // ── Gradient stops ─────────────────────────────────────────────────────────
  static const Color gradientStart = Color(0xFF6C63FF); // violet
  static const Color gradientMid = Color(0xFF9B59F5); // purple
  static const Color gradientEnd = Color(0xFF00D4FF); // cyan

  // ── Text ───────────────────────────────────────────────────────────────────
  static const Color textPrimary = Color(0xFFEAEEFF); // near-white
  static const Color textSecondary = Color(0xFF8892B0); // muted blue-grey
  static const Color textHint = Color(0xFF4A5568); // dim placeholder

  // ── Borders / Dividers ─────────────────────────────────────────────────────
  static const Color border = Color(0xFF2D3748); // subtle border
  static const Color borderFocused = Color(0xFF6C63FF); // accent border
  static const Color borderError = Color(0xFFFF5E7D); // error red-pink

  // ── Status ─────────────────────────────────────────────────────────────────
  static const Color error = Color(0xFFFF5E7D);
  static const Color success = Color(0xFF00E5A0);
  static const Color warning = Color(0xFFFFB547);

  // ── Utility ────────────────────────────────────────────────────────────────
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Colors.transparent;

  // ── Backward-compatibility aliases ─────────────────────────────────────────
  // Kept so existing widgets compile without changes.
  // Prefer the semantic tokens above in new code.
  static const Color lightGrey = Color(0xFF8892B0); // → textSecondary
  static const Color extraLightGrey = Color(0xFF151D2E); // → inputFill
  static const Color mildBlue = Color(0xFF6C63FF); // → primary
  static const Color red = Color(0xFFFF5E7D); // → error
  static const Color green = Color(0xFF00E5A0); // → success
  static const Color secondary = Color(0xFF6C63FF); // → primary
  static const Color scaffoldColor = Color(0xFF0A0E1A); // → scaffoldDark
}

/// App-wide gradient — use on buttons, logo glows, dividers.
const kBrandGradient = LinearGradient(
  colors: [
    AppColors.gradientStart,
    AppColors.gradientMid,
    AppColors.gradientEnd,
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const kBrandGradientVertical = LinearGradient(
  colors: [AppColors.gradientStart, AppColors.gradientEnd],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
