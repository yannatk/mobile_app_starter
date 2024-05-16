import 'package:flutter/material.dart';

class AppTextBody extends StatelessWidget {
  const AppTextBody({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.justify,
    );
  }
}
