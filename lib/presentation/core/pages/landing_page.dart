import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/presentation/core/styles/app_colors.dart';
import 'package:flutter_template/presentation/core/widgets/buttons/rounded_filled_button.dart';
import 'package:flutter_template/presentation/core/widgets/buttons/theme_toggle_button.dart';
import 'package:flutter_template/presentation/routes/router.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cs = Theme.of(context).colorScheme;

    // Orb intensity is reduced in light mode so they don't overwhelm white bg
    final orbAlphaPrimary = isDark ? 0.25 : 0.12;
    final orbAlphaAccent = isDark ? 0.15 : 0.08;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(
          children: [
            // ── Background glow orbs ──────────────────────────────────
            Positioned(
              top: -80,
              right: -60,
              child: _GlowOrb(
                color: AppColors.primary.withValues(alpha: orbAlphaPrimary),
                size: 280,
              ),
            ),
            Positioned(
              bottom: 80,
              left: -80,
              child: _GlowOrb(
                color: AppColors.accent.withValues(alpha: orbAlphaAccent),
                size: 240,
              ),
            ),

            // ── Content ───────────────────────────────────────────────
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  children: [
                    const SizedBox(height: 16),

                    // ── Top row: logo badge + theme toggle ───────────
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Logo pill — uses theme surface + border
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: cs.surface,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: isDark
                                  ? AppColors.border
                                  : const Color(0xFFD1D5E8),
                            ),
                            boxShadow: isDark
                                ? null
                                : [
                                    BoxShadow(
                                      color:
                                          Colors.black.withValues(alpha: 0.04),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) =>
                                    const LinearGradient(
                                  colors: [
                                    AppColors.gradientStart,
                                    AppColors.gradientEnd,
                                  ],
                                ).createShader(bounds),
                                child: const Icon(
                                  Icons.bolt_rounded,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                              const SizedBox(width: 6),
                              Text(
                                'Flutter DDD Template',
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: cs.onSurface,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const ThemeToggleButton(),
                      ],
                    ),

                    const Spacer(flex: 2),

                    // ── Hero icon ─────────────────────────────────────
                    _HeroLogo(isDark: isDark),
                    const SizedBox(height: 40),

                    // ── Headline ──────────────────────────────────────
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Build faster\n',
                            style: GoogleFonts.inter(
                              fontSize: 38,
                              fontWeight: FontWeight.w800,
                              color: cs.onSurface,
                              height: 1.15,
                            ),
                          ),
                          TextSpan(
                            text: 'with ',
                            style: GoogleFonts.inter(
                              fontSize: 38,
                              fontWeight: FontWeight.w800,
                              color: cs.onSurface,
                              height: 1.15,
                            ),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: ShaderMask(
                              shaderCallback: (bounds) =>
                                  const LinearGradient(
                                colors: [
                                  AppColors.gradientStart,
                                  AppColors.gradientEnd,
                                ],
                              ).createShader(bounds),
                              child: Text(
                                'clean code',
                                style: GoogleFonts.inter(
                                  fontSize: 38,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                  height: 1.15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // ── Subtitle ──────────────────────────────────────
                    Text(
                      'A production-ready Flutter template following Domain-Driven Design. Auth, API, BLoC, and DI — all set up.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        color: cs.onSurface.withValues(alpha: 0.6),
                        height: 1.6,
                      ),
                    ),

                    const Spacer(flex: 3),

                    // ── Feature pills ─────────────────────────────────
                    const Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      alignment: WrapAlignment.center,
                      children: [
                        _FeaturePill(label: 'DDD Architecture'),
                        _FeaturePill(label: 'BLoC'),
                        _FeaturePill(label: 'Firebase Auth'),
                        _FeaturePill(label: 'REST API'),
                        _FeaturePill(label: 'Injectable DI'),
                        _FeaturePill(label: 'Freezed'),
                      ],
                    ),
                    const SizedBox(height: 40),

                    // ── CTA buttons ───────────────────────────────────
                    RoundedFilledButton(
                      text: 'Create account',
                      arrow: true,
                      onTap: () {
                        HapticFeedback.mediumImpact();
                        AutoRouter.of(context).push(const SignupRoute());
                      },
                    ),
                    const SizedBox(height: 16),

                    // Secondary "Sign in" button — theme-adaptive outline
                    GestureDetector(
                      onTap: () {
                        HapticFeedback.selectionClick();
                        AutoRouter.of(context).push(const SigninRoute());
                      },
                      child: Container(
                        width: double.infinity,
                        height: 52,
                        decoration: BoxDecoration(
                          color: cs.surface,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: isDark
                                ? AppColors.border
                                : const Color(0xFFD1D5E8),
                          ),
                          boxShadow: isDark
                              ? null
                              : [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.04),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                        ),
                        child: Center(
                          child: Text(
                            'Sign in',
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: cs.onSurface,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Sub-widgets ───────────────────────────────────────────────────────────────

class _GlowOrb extends StatelessWidget {
  const _GlowOrb({required this.color, required this.size});
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(colors: [color, Colors.transparent]),
      ),
    );
  }
}

class _HeroLogo extends StatelessWidget {
  const _HeroLogo({required this.isDark});
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Outer ring glow
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                AppColors.primary.withValues(alpha: isDark ? 0.2 : 0.12),
                Colors.transparent,
              ],
            ),
          ),
        ),
        // Mid ring
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.primary.withValues(alpha: isDark ? 0.2 : 0.15),
              width: 1,
            ),
          ),
        ),
        // Logo circle — gradient stays the same in both modes
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [AppColors.gradientStart, AppColors.gradientEnd],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withValues(
                  alpha: isDark ? 0.55 : 0.35,
                ),
                blurRadius: 36,
                spreadRadius: 4,
              ),
            ],
          ),
          child: const Icon(
            Icons.bolt_rounded,
            color: AppColors.white,
            size: 44,
          ),
        ),
      ],
    );
  }
}

class _FeaturePill extends StatelessWidget {
  const _FeaturePill({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF151D2E) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isDark ? AppColors.border : const Color(0xFFD1D5E8),
        ),
      ),
      child: Text(
        label,
        style: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: cs.onSurface.withValues(alpha: 0.6),
        ),
      ),
    );
  }
}
