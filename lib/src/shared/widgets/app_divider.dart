import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(indent: Sizes.p2, endIndent: Sizes.p8);
  }
}
