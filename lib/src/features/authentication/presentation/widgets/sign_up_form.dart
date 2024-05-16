import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/features/authentication/presentation/utils/base_validators.dart';
import 'package:mobile_app_starter/src/features/authentication/presentation/widgets/password_field.dart';
import 'package:mobile_app_starter/src/shared/widgets/primary_button.dart';

class SignUpForm extends ConsumerStatefulWidget {
  const SignUpForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EmailPasswordAuthFormState();
}

class _EmailPasswordAuthFormState extends ConsumerState<SignUpForm>
    with BaseValidators {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();

  var _submitted = false;
  final _formKey = GlobalKey<FormState>();
  String get email => _emailController.text.trim();
  String get password => _passwordController.text.trim();
  String get confirmPassword => _repeatPasswordController.text.trim();

  Future<void> onSignUp() async {
    setState(() => _submitted = true);

    if (_formKey.currentState!.validate()) {
      debugPrint('$email, $password, $confirmPassword');
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            enableSuggestions: false,
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: AppColors.grey),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.always,
            validator: (email) =>
                !_submitted ? null : emailErrorText(email ?? ''),
            textInputAction: TextInputAction.next,
          ),
          PasswordField(
            controller: _passwordController,
            validator: (password) =>
                !_submitted ? null : passwordErrorText(password ?? ''),
            textInputAction: TextInputAction.next,
          ),
          PasswordField(
            controller: _repeatPasswordController,
            labelText: 'Répéter le mot de passe',
            validator: (confirmPassword) => !_submitted
                ? null
                : confirmPasswordErrorText(password, confirmPassword ?? ''),
          ),
          gapH16,
          PrimaryButton(
            key: const ValueKey('signUpButton'),
            text: 'S’inscrire',
            onPressed: onSignUp,
          ),
        ],
      ),
    );
  }
}
