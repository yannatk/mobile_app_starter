import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/features/authentication/presentation/widgets/sign_in_form.dart';
import 'package:mobile_app_starter/src/routing/app_router.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_button.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  Future<void> _goToSignUp() {
    return context.pushNamed(AppRoute.signUpScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Connexion',
          style: TextStyle(color: AppColors.green),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
        child: ListView(
          children: [
            const SignInForm(),
            gapH32,
            AppTextButton(
              onPressed: _goToSignUp,
              text: 'Pas encore de compte ? Inscrivez-vous',
            ),
          ],
        ),
      ),
    );
  }
}
