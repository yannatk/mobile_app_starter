import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen three'),
      ),
      body: const Center(
        child: Text('ScreenThree'),
      ),
    );
  }
}
