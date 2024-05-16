import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/constants/constants.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_body.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_heading.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Termes & Conditions'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p16, vertical: Sizes.p16),
        child: ListView(
          children: const [
            gapH16,
            AppTextHeading(text: 'Acceptation des termes'),
            gapH4,
            AppTextBody(
                text: Constants.termsAndConditionsAcceptanceSectionText),
            gapH4,
            AppTextHeading(text: 'Licence d’utilisation'),
            gapH4,
            AppTextBody(text: Constants.termsAndConditionsLicenseSectionText),
            gapH4,
            AppTextHeading(text: 'Restrictions'),
            gapH4,
            AppTextBody(
                text: Constants.termsAndConditionsRestrictionSectionText),
            gapH4,
            AppTextHeading(text: 'Modification des termes'),
            gapH4,
            AppTextBody(
                text: Constants.termsAndConditionsModificationsSectionText),
            gapH4,
            AppTextHeading(text: 'Contact'),
            gapH4,
            AppTextBody(text: Constants.termsAndConditionsContactSectionText),
            gapH16,
          ],
        ),
      ),
    );
  }
}
