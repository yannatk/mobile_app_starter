import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
import 'package:mobile_app_starter/src/localization/string_hardcoded.dart';
import 'package:mobile_app_starter/src/routing/app_router.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_divider.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_list_tile.dart';
import 'package:mobile_app_starter/src/shared/widgets/app_text_button.dart';

class AccountScreen extends ConsumerStatefulWidget {
  const AccountScreen({super.key});

  @override
  ConsumerState<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends ConsumerState<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'.hardcoded),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p16, vertical: Sizes.p16),
        child: ListView(
          children: [
            gapH16,
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.black,
                    foregroundColor: AppColors.white,
                    radius: Sizes.p32,
                    child: Icon(Icons.person, size: Sizes.p24),
                  ),
                  Text(
                    'jdoe@app.com',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'John Doe',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            gapH16,
            AppListTile(
                title: 'Update my information'.hardcoded,
                onTap: () =>
                    context.goNamed(AppRoute.editMyInformationScreen.name)),
            const AppDivider(),
            gapH8,
            AppListTile(
              title: 'About'.hardcoded,
              onTap: () => context.goNamed(AppRoute.aboutScreen.name),
            ),
            const AppDivider(),
            AppListTile(
                title: 'Send a request'.hardcoded,
                onTap: () => context.goNamed(AppRoute.sendRequestScreen.name)),
            const AppDivider(),
            AppListTile(
              title: 'Terms & Conditions'.hardcoded,
              onTap: () =>
                  context.goNamed(AppRoute.termsAndConditionsScreen.name),
            ),
            const AppDivider(),
            AppListTile(
              title: 'Privacy Policy'.hardcoded,
              onTap: () => context.goNamed(AppRoute.privacyPolicyScreen.name),
            ),
            const AppDivider(),
            Center(
              child: AppTextButton(
                text: 'Sign out'.hardcoded,
                // TODO(dev): Add sign out logic
                onPressed: () => (),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
