import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/features/authentication/presentation/utils/base_validators.dart';
import 'package:mobile_app_starter/src/features/authentication/presentation/widgets/password_field.dart';
import 'package:mobile_app_starter/src/localization/string_hardcoded.dart';
import 'package:mobile_app_starter/src/shared/widgets/primary_button.dart';

class SignInForm extends ConsumerStatefulWidget {
  const SignInForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInFormState();
}

class _SignInFormState extends ConsumerState<SignInForm> with BaseValidators {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get _email => _emailController.text.trim();
  String get _password => _passwordController.text.trim();

  var _submitted = false;

  Future<void> onSignInWithEmailAndPassword() async {
    setState(() => _submitted = true);

    if (_formKey.currentState!.validate()) {
      // TODO(dev): Add sign in logic
      debugPrint('$_email and $_password');
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
            decoration: InputDecoration(
              labelText: 'Email'.hardcoded,
              labelStyle: const TextStyle(color: AppColors.grey),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              ),
              enabledBorder: const UnderlineInputBorder(
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
          ),
          Container(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot password ?'.hardcoded,
              ),
            ),
          ),
          gapH16,
          PrimaryButton(
            text: 'Sign in'.hardcoded,
            onPressed: () {
              return onSignInWithEmailAndPassword();
            },
          ),
        ],
      ),
    );
  }
}
