import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/constants/constants.dart';
import 'package:mobile_app_starter/src/localization/string_hardcoded.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_body.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_heading.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'.hardcoded),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p16, vertical: Sizes.p16),
        child: ListView(
          children: [
            gapH16,
            AppTextHeading(text: 'Introduction'.hardcoded),
            gapH4,
            const AppTextBody(text: Constants.privacyPolicyIntroSectionText),
            gapH4,
            AppTextHeading(
                text: 'Collection of personal information'.hardcoded),
            gapH4,
            const AppTextBody(
                text: Constants.privacyPolicyDataCollectedSectionText),
            gapH4,
            AppTextHeading(
                text: 'Use and processing of collected information'.hardcoded),
            gapH4,
            const AppTextBody(
                text: Constants.privacyPolicyDataUsageSectionText),
            gapH4,
            AppTextHeading(text: 'Information sharing'.hardcoded),
            gapH4,
            const AppTextBody(
                text: Constants.privacyPolicyDataSharingSectionText),
            gapH4,
            AppTextHeading(text: 'Information security'.hardcoded),
            gapH4,
            const AppTextBody(text: Constants.privacyPolicySecuritySectionText),
            gapH16,
          ],
        ),
      ),
    );
  }
}
