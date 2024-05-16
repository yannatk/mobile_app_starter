import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/constants/constants.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_body.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_heading.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Politique de Confidentialité'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p16, vertical: Sizes.p16),
        child: ListView(
          children: const [
            gapH16,
            AppTextHeading(text: 'Introduction'),
            gapH4,
            AppTextBody(text: Constants.privacyPolicyIntroSectionText),
            gapH4,
            AppTextHeading(text: 'Collecte d’informations'),
            gapH4,
            AppTextBody(text: Constants.privacyPolicyDataCollectedSectionText),
            gapH4,
            AppTextHeading(text: 'Utilisation des informations'),
            gapH4,
            AppTextBody(text: Constants.privacyPolicyDataUsageSectionText),
            gapH4,
            AppTextHeading(text: 'Partage d’informations'),
            gapH4,
            AppTextBody(text: Constants.privacyPolicyDataSharingSectionText),
            gapH4,
            AppTextHeading(text: 'Sécurité'),
            gapH4,
            AppTextBody(text: Constants.privacyPolicySecuritySectionText),
            gapH16,
          ],
        ),
      ),
    );
  }
}
