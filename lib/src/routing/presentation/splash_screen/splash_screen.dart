import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: Image.asset('assets/images/splash.png').image,
            fit: BoxFit.cover),
      ),
      child: const Scaffold(
        backgroundColor: AppColors.splashScreen,
      ),
    );
  }
}
