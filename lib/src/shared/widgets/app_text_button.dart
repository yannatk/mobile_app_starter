import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key, required this.text, this.style, this.onPressed});
  final String text;
  final TextStyle? style;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.p48,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: style,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
