import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/presentation/core/styles/app_colors.dart';
import 'package:flutter_template/presentation/routes/router.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  OnboardingPageState createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  static const List<_OnboardingData> _pages = [
    _OnboardingData(
      icon: Icons.layers_rounded,
      gradientColors: [Color(0xFF6C63FF), Color(0xFF9B59F5)],
      title: 'Clean Architecture',
      subtitle:
          'Built on Domain-Driven Design principles. Every layer has its purpose — domain, application, infrastructure, and presentation.',
    ),
    _OnboardingData(
      icon: Icons.shield_rounded,
      gradientColors: [Color(0xFF9B59F5), Color(0xFF00D4FF)],
      title: 'Type-Safe & Robust',
      subtitle:
          'Value objects, sealed failures, and functional error handling with Either. No more runtime surprises.',
    ),
    _OnboardingData(
      icon: Icons.bolt_rounded,
      gradientColors: [Color(0xFF00D4FF), Color(0xFF6C63FF)],
      title: 'Ready to Ship',
      subtitle:
          'Firebase Auth, REST API, BLoC, injectable DI and environment configs — all wired up and waiting for you.',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goTo(int page) {
    HapticFeedback.selectionClick();
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void _finish() {
    HapticFeedback.mediumImpact();
    AutoRouter.of(context).replace(const LandingRoute());
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              // ── Skip button ──────────────────────────────────────────
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, right: 24),
                  child: GestureDetector(
                    onTap: _finish,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
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
                                  color: Colors.black.withValues(alpha: 0.04),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                      ),
                      child: Text(
                        'Skip',
                        style: tt.bodySmall?.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // ── Page view ────────────────────────────────────────────
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _pages.length,
                  onPageChanged: (i) => setState(() => _currentPage = i),
                  itemBuilder: (context, index) =>
                      _OnboardingSlide(data: _pages[index]),
                ),
              ),

              // ── Dots + navigation ────────────────────────────────────
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Back / empty
                    SizedBox(
                      width: 48,
                      child: _currentPage > 0
                          ? _NavCircleButton(
                              icon: Icons.arrow_back_rounded,
                              onTap: () => _goTo(_currentPage - 1),
                              gradient: false,
                            )
                          : const SizedBox.shrink(),
                    ),

                    // Animated dots
                    Row(
                      children: List.generate(_pages.length, (i) {
                        final isActive = i == _currentPage;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: isActive ? 24 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            gradient: isActive
                                ? const LinearGradient(
                                    colors: [
                                      AppColors.gradientStart,
                                      AppColors.gradientEnd,
                                    ],
                                  )
                                : null,
                            // Inactive dots: subtle tint of onSurface
                            color: isActive
                                ? null
                                : cs.onSurface.withValues(alpha: 0.2),
                          ),
                        );
                      }),
                    ),

                    // Next / Get started
                    SizedBox(
                      width: 48,
                      child: _NavCircleButton(
                        icon: _currentPage == _pages.length - 1
                            ? Icons.check_rounded
                            : Icons.arrow_forward_rounded,
                        onTap: _currentPage == _pages.length - 1
                            ? _finish
                            : () => _goTo(_currentPage + 1),
                        gradient: true,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Data model ────────────────────────────────────────────────────────────────

class _OnboardingData {
  const _OnboardingData({
    required this.icon,
    required this.gradientColors,
    required this.title,
    required this.subtitle,
  });
  final IconData icon;
  final List<Color> gradientColors;
  final String title;
  final String subtitle;
}

// ── Single slide ──────────────────────────────────────────────────────────────

class _OnboardingSlide extends StatelessWidget {
  const _OnboardingSlide({required this.data});
  final _OnboardingData data;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon with glow — gradient stays vivid in both modes
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      data.gradientColors.first.withValues(alpha: 0.25),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: data.gradientColors,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: data.gradientColors.first.withValues(alpha: 0.4),
                      blurRadius: 32,
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: Icon(data.icon, color: Colors.white, size: 48),
              ),
            ],
          ),
          const SizedBox(height: 48),

          // Title — explicit onSurface so it's always legible
          Text(
            data.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: cs.onSurface,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 16),

          // Subtitle — slightly dimmed onSurface
          Text(
            data.subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: cs.onSurface.withValues(alpha: 0.6),
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

// ── Nav circle button ─────────────────────────────────────────────────────────

class _NavCircleButton extends StatelessWidget {
  const _NavCircleButton({
    required this.icon,
    required this.onTap,
    required this.gradient,
  });
  final IconData icon;
  final VoidCallback onTap;
  final bool gradient;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cs = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // Gradient (forward/finish) button — stays the same in both modes
          gradient: gradient
              ? const LinearGradient(
                  colors: [AppColors.gradientStart, AppColors.gradientEnd],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
          // Back button — uses theme surface
          color: gradient ? null : cs.surface,
          border: gradient
              ? null
              : Border.all(
                  color: isDark ? AppColors.border : const Color(0xFFD1D5E8),
                ),
          boxShadow: gradient
              ? [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.4),
                    blurRadius: 16,
                    spreadRadius: 2,
                  ),
                ]
              : null,
        ),
        child: Icon(
          icon,
          // Forward: white on gradient; Back: onSurface from theme
          color: gradient ? Colors.white : cs.onSurface.withValues(alpha: 0.6),
          size: 20,
        ),
      ),
    );
  }
}
