import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/constants/constants.dart';
import 'package:mobile_app_starter/src/localization/string_hardcoded.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_body.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_heading.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'.hardcoded),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p16, vertical: Sizes.p16),
        child: ListView(
          children: [
            gapH16,
            AppTextHeading(text: 'Acceptance of these terms'.hardcoded),
            gapH4,
            const AppTextBody(
                text: Constants.termsAndConditionsAcceptanceSectionText),
            gapH4,
            AppTextHeading(text: 'Intellectual property rights'.hardcoded),
            gapH4,
            const AppTextBody(
                text: Constants.termsAndConditionsLicenseSectionText),
            gapH4,
            AppTextHeading(text: 'Limitation of liability'.hardcoded),
            gapH4,
            const AppTextBody(
                text: Constants.termsAndConditionsRestrictionSectionText),
            gapH4,
            AppTextHeading(text: 'Changes and amendments'.hardcoded),
            gapH4,
            const AppTextBody(
                text: Constants.termsAndConditionsModificationsSectionText),
            gapH4,
            AppTextHeading(text: 'Contacting us'.hardcoded),
            gapH4,
            const AppTextBody(
                text: Constants.termsAndConditionsContactSectionText),
            gapH16,
          ],
        ),
      ),
    );
  }
}
