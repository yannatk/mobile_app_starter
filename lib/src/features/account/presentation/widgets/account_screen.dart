import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';
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
        title: const Text('Mon Compte'),
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
                    backgroundColor: AppColors.green,
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
                title: 'Modifier Mes Informations',
                onTap: () =>
                    context.goNamed(AppRoute.editMyInformationScreen.name)),
            const AppDivider(),
            gapH8,
            AppListTile(
              title: 'A Propos',
              onTap: () => context.goNamed(AppRoute.aboutScreen.name),
            ),
            const AppDivider(),
            AppListTile(
                title: 'Faire Une Demande',
                onTap: () => context.goNamed(AppRoute.sendRequestScreen.name)),
            const AppDivider(),
            AppListTile(
              title: 'Termes & Conditions',
              onTap: () =>
                  context.goNamed(AppRoute.termsAndConditionsScreen.name),
            ),
            const AppDivider(),
            AppListTile(
              title: 'Politique De Confidentialité',
              onTap: () => context.goNamed(AppRoute.privacyPolicyScreen.name),
            ),
            const AppDivider(),
            Center(
              child: AppTextButton(
                text: 'Se déconnecter',
                onPressed: () => (),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
