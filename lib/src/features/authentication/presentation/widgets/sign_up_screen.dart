import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/features/authentication/presentation/widgets/sign_up_form.dart';
import 'package:mobile_app_starter/src/localization/string_hardcoded.dart';
import 'package:mobile_app_starter/src/routing/app_router.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_button.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  void _goToSignIn() {
    return context.goNamed(AppRoute.signInScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register'.hardcoded,
          style: const TextStyle(color: AppColors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
        child: ListView(
          children: [
            const SignUpForm(),
            gapH16,
            AppTextButton(
              onPressed: _goToSignIn,
              text: 'Already have an account? Log in'.hardcoded,
            ),
            gapH16,
          ],
        ),
      ),
    );
  }
}
