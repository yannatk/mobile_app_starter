import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/localization/string_hardcoded.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen three'.hardcoded),
      ),
      body: Center(
        child: Text('ScreenThree'.hardcoded),
      ),
    );
  }
}
