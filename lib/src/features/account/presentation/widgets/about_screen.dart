import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/constants/constants.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_body.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_heading.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('À propos'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p16, vertical: Sizes.p16),
        child: ListView(
          children: const [
            gapH16,
            AppTextHeading(text: 'À propos de '),
            gapH4,
            AppTextBody(text: Constants.aboutTitleSectionText),
            gapH4,
            AppTextHeading(text: 'Mission'),
            gapH4,
            AppTextBody(text: Constants.aboutMissionSectionText),
            gapH4,
            AppTextHeading(text: 'Fonctionnalités'),
            gapH4,
            AppTextBody(text: Constants.aboutFeaturesSectionText),
            gapH4,
            AppTextHeading(text: 'Contact'),
            gapH4,
            AppTextBody(text: Constants.aboutContactSectionText),
            gapH16,
          ],
        ),
      ),
    );
  }
}
