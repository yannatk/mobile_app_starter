import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    required this.controller,
    required this.validator,
    this.labelText = 'Password',
    this.textInputAction = TextInputAction.done,
    super.key,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? labelText;
  final TextInputAction? textInputAction;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      enableSuggestions: false,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.labelText,
        suffixIcon: GestureDetector(
          onTap: _togglePasswordVisibility,
          child: Icon(
            semanticLabel: 'togglePasswordVisibility',
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: AppColors.black,
          ),
        ),
        labelStyle: const TextStyle(color: AppColors.grey),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey),
        ),
      ),
      obscureText: _obscureText,
      autovalidateMode: AutovalidateMode.always,
      validator: widget.validator,
      textInputAction: widget.textInputAction,
    );
  }
}
