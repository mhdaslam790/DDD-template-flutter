import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/auth/auth_bloc.dart';
import 'package:flutter_template/domain/auth/value_objects.dart';
import 'package:flutter_template/domain/core/helpers/validators.dart';
import 'package:flutter_template/presentation/core/styles/app_colors.dart';
import 'package:flutter_template/presentation/core/widgets/buttons/rounded_filled_button.dart';
import 'package:flutter_template/presentation/core/widgets/inputs/inputs.dart';
import 'package:flutter_template/presentation/routes/router.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final TextEditingController _emailTEC = TextEditingController();
  final TextEditingController _passwordTEC = TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailTEC.dispose();
    _passwordTEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(() {}, (some) {
          some.fold(
            (failure) {
              Fluttertoast.showToast(
                msg: failure.maybeMap(
                  userNotFound: (_) => 'User not found.',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email or password. Please try again.',
                  serverError: (e) => e.error,
                  orElse: () => 'An unexpected error occurred.',
                ),
                backgroundColor: AppColors.error,
                textColor: AppColors.white,
                gravity: ToastGravity.TOP,
              );
            },
            (_) {
              AutoRouter.of(context).popUntilRoot();
              AutoRouter.of(context).replace(const BaseRoute());
            },
          );
        });
      },
      builder: (context, state) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        final cs = Theme.of(context).colorScheme;

        return AnnotatedRegion<SystemUiOverlayStyle>(
          value:
              isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
          child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 60),

                    // ── Logo + heading ───────────────────────────────────
                    const _GlowLogo(),
                    const SizedBox(height: 32),
                    Text(
                      'Welcome back',
                      style: GoogleFonts.inter(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: cs.onSurface,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Sign in to continue',
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        color: cs.onSurface.withValues(alpha: 0.6),
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
                              validator: Validators.email,
                              onTap: () => HapticFeedback.selectionClick(),
                            ),
                            const SizedBox(height: 16),
                            CustomTextField(
                              controller: _passwordTEC,
                              labelText: 'Password',
                              hintText: '••••••••',
                              obscureText: true,
                              prefixIcon: Icons.lock_outline_rounded,
                              validator: Validators.password,
                              onTap: () => HapticFeedback.selectionClick(),
                            ),
                            const SizedBox(height: 12),

                            // Forgot password
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  HapticFeedback.selectionClick();
                                  AutoRouter.of(
                                    context,
                                  ).push(ForgotPasswordRoute());
                                },
                                child: Text(
                                  'Forgot password?',
                                  style: GoogleFonts.inter(
                                    fontSize: 13,
                                    color: cs.primary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 28),

                            // Sign in button
                            RoundedFilledButton(
                              text: 'Sign in',
                              isLoading: state.isLoading,
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                if (_key.currentState!.validate()) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.signInWithEmailAndPassword(
                                          emailAddress: EmailAddress(
                                            _emailTEC.text,
                                          ),
                                          password: Password(_passwordTEC.text),
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

                    // ── Sign up link ─────────────────────────────────────
                    RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: cs.onSurface.withValues(alpha: 0.6),
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign up',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: cs.primary,
                              fontWeight: FontWeight.w600,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                HapticFeedback.selectionClick();
                                AutoRouter.of(context).push(SignupRoute());
                              },
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

// ── Shared glow logo ─────────────────────────────────────────────────────────

class _GlowLogo extends StatelessWidget {
  const _GlowLogo();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                AppColors.primary.withValues(alpha: 0.3),
                Colors.transparent,
              ],
            ),
          ),
        ),
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [AppColors.gradientStart, AppColors.gradientEnd],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.5),
                blurRadius: 28,
                spreadRadius: 4,
              ),
            ],
          ),
          child: const Icon(
            Icons.bolt_rounded,
            color: AppColors.white,
            size: 36,
          ),
        ),
      ],
    );
  }
}
