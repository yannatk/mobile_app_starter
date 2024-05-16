import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/localization/string_hardcoded.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home screen'.hardcoded),
      ),
      body: Center(
        child: Text('HomeScreen'.hardcoded),
      ),
    );
  }
}
