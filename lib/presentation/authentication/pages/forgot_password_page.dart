import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/domain/auth/value_objects.dart';
import 'package:flutter_template/presentation/core/styles/app_colors.dart';
import 'package:flutter_template/presentation/core/widgets/buttons/rounded_filled_button.dart';
import 'package:flutter_template/presentation/core/widgets/inputs/custom_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailTEC = TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailTEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.emailSendFailureOrSuccessOption.fold(() {}, (some) {
          some.fold(
            (failure) {
              Fluttertoast.showToast(
                msg: failure.maybeMap(
                  userNotFound: (_) =>
                      'No account found for this email address.',
                  serverError: (e) => e.error,
                  orElse: () => 'An unexpected error occurred.',
                ),
                backgroundColor: AppColors.error,
                textColor: AppColors.white,
                gravity: ToastGravity.TOP,
              );
            },
            (_) {
              Fluttertoast.showToast(
                msg: 'Password reset email sent!',
                backgroundColor: AppColors.success,
                textColor: AppColors.white,
                gravity: ToastGravity.TOP,
              );
              AutoRouter.of(context).maybePop();
            },
          );
        });
      },
      builder: (context, state) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        final cs = Theme.of(context).colorScheme;
        final bgColor = Theme.of(context).scaffoldBackgroundColor;

        return AnnotatedRegion<SystemUiOverlayStyle>(
          value:
              isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
          child: Scaffold(
            backgroundColor: bgColor,
            appBar: AppBar(
              backgroundColor: bgColor,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: cs.onSurface,
                  size: 20,
                ),
                onPressed: () {
                  HapticFeedback.selectionClick();
                  AutoRouter.of(context).maybePop();
                },
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),

                    // ── Icon + heading ───────────────────────────────────
                    _ResetIcon(cardColor: cs.surface, isDark: isDark),
                    const SizedBox(height: 28),
                    Text(
                      'Reset your password',
                      style: GoogleFonts.inter(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: cs.onSurface,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Enter your email and we\'ll send you a link to reset your password.',
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        color: cs.onSurface.withValues(alpha: 0.6),
                        height: 1.55,
                      ),
                    ),
                    const SizedBox(height: 40),

                    // ── Form card ────────────────────────────────────────
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: cs.surface,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: isDark
                              ? AppColors.border
                              : const Color(0xFFD1D5E8),
                        ),
                        boxShadow: isDark
                            ? null
                            : [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.06),
                                  blurRadius: 20,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                      ),
                      child: Form(
                        key: _key,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CustomTextField(
                              controller: _emailTEC,
                              labelText: 'Email address',
                              hintText: 'you@example.com',
                              keyboardType: TextInputType.emailAddress,
                              prefixIcon: Icons.mail_outline_rounded,
                              validator: (value, _) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email address';
                                }
                                return null;
                              },
                              onTap: () => HapticFeedback.selectionClick(),
                            ),
                            const SizedBox(height: 28),
                            RoundedFilledButton(
                              text: 'Send reset link',
                              isLoading: state.isLoading,
                              icon: Icons.send_rounded,
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                if (_key.currentState!.validate()) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.sendEmailConfirmation(
                                          emailAddress: EmailAddress(
                                            _emailTEC.text,
                                          ),
                                        ),
                                      );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),

                    // ── Info note ────────────────────────────────────────
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.accent.withValues(alpha: isDark ? 0.12 : 0.08),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: AppColors.accent.withValues(alpha: 0.3),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.info_outline_rounded,
                            color: AppColors.accent,
                            size: 18,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Check your spam folder if you don\'t see the email within a few minutes.',
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                color: AppColors.accent,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// ── Reset icon ────────────────────────────────────────────────────────────────

class _ResetIcon extends StatelessWidget {
  const _ResetIcon({required this.cardColor, required this.isDark});
  final Color cardColor;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                AppColors.warning.withValues(alpha: 0.2),
                Colors.transparent,
              ],
            ),
          ),
        ),
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: cardColor,
            border: Border.all(
              color: AppColors.warning.withValues(alpha: 0.5),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.warning.withValues(alpha: 0.2),
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ],
          ),
          child: const Icon(
            Icons.lock_reset_rounded,
            color: AppColors.warning,
            size: 30,
          ),
        ),
      ],
    );
  }
}
