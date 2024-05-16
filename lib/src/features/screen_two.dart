import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/localization/string_hardcoded.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen two'.hardcoded),
      ),
      body: Center(
        child: Text('ScreenTwo'.hardcoded),
      ),
    );
  }
}
