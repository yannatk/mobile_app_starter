//TODO(dev): remove this
// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';
import 'package:mobile_app_starter/src/features/account/presentation/widgets/about_screen.dart';
import 'package:mobile_app_starter/src/features/account/presentation/widgets/account_screen.dart';
import 'package:mobile_app_starter/src/features/account/presentation/widgets/edit_my_information_screen.dart';
import 'package:mobile_app_starter/src/features/account/presentation/widgets/privacy_policy_screen.dart';
import 'package:mobile_app_starter/src/features/account/presentation/widgets/send_request_screen.dart';
import 'package:mobile_app_starter/src/features/account/presentation/widgets/terms_and_conditions_screen.dart';
import 'package:mobile_app_starter/src/features/authentication/presentation/widgets/sign_in_screen.dart';
import 'package:mobile_app_starter/src/features/authentication/presentation/widgets/sign_up_screen.dart';
import 'package:mobile_app_starter/src/features/home_screen.dart';
import 'package:mobile_app_starter/src/features/screen_three.dart';
import 'package:mobile_app_starter/src/features/screen_two.dart';
import 'package:mobile_app_starter/src/routing/presentation/bottom_navigation_bar/app_bottom_navigation_bar.dart';
import 'package:mobile_app_starter/src/routing/presentation/not_found_screen.dart';
import 'package:mobile_app_starter/src/routing/presentation/splash_screen/splash_screen.dart';

enum AppRoute {
  splashScreen,
  signInScreen,
  signUpScreen,
  homeScreen,
  screenTwo,
  screenThree,
  accountScreen,
  editMyInformationScreen,
  aboutScreen,
  privacyPolicyScreen,
  termsAndConditionsScreen,
  sendRequestScreen,
}

extension AppRouteX on AppRoute {
  String get location => '/$name';

  static List<String> get authenticatedRoutes => [
        AppRoute.homeScreen.location,
        AppRoute.screenTwo.location,
        AppRoute.screenThree.location,
        AppRoute.accountScreen.location,
        AppRoute.editMyInformationScreen.location,
        AppRoute.aboutScreen.location,
        AppRoute.privacyPolicyScreen.location,
        AppRoute.termsAndConditionsScreen.location,
      ];

  static List<String> get authenticationRoutes => [
        AppRoute.signInScreen.location,
        AppRoute.signUpScreen.location,
      ];
}

final goRouterProvider = Provider<GoRouter>((ref) {
  final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
  final shellNavigatorHomeKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  final shellNavigator2Key = GlobalKey<NavigatorState>(debugLabel: 'shell2');
  final shellNavigator3Key = GlobalKey<NavigatorState>(debugLabel: 'shell3');
  final shellNavigatorAccountKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellAccount');

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
    redirect: (context, state) {
      // TODO(dev): Get the log in status
      const isLoggedIn = true;

      if (isLoggedIn) {
        if (!AppRouteX.authenticatedRoutes.any(
          (routeLocation) => state.uri.path.contains(routeLocation),
        )) {
          return AppRoute.homeScreen.location;
        }
      } else {
        if (AppRouteX.authenticationRoutes
                .none((location) => state.uri.path.contains(location)) ||
            AppRouteX.authenticatedRoutes.any(
              (routeLocation) => state.uri.path.contains(routeLocation),
            )) {
          return AppRoute.signInScreen.location;
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.splashScreen.name,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: SplashScreen()),
      ),
      GoRoute(
        path: AppRoute.signInScreen.location,
        name: AppRoute.signInScreen.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SignInScreen(),
        ),
      ),
      GoRoute(
        path: AppRoute.signUpScreen.location,
        name: AppRoute.signUpScreen.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SignUpScreen(),
        ),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppBottomNavigationBar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: shellNavigatorHomeKey,
            routes: [
              GoRoute(
                path: AppRoute.homeScreen.location,
                name: AppRoute.homeScreen.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: Center(child: HomeScreen()),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: shellNavigator2Key,
            routes: [
              GoRoute(
                path: AppRoute.screenTwo.location,
                name: AppRoute.screenTwo.name,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: Center(child: ScreenTwo())),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: shellNavigator3Key,
            routes: [
              GoRoute(
                path: AppRoute.screenThree.location,
                name: AppRoute.screenThree.name,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: Center(child: ScreenThree())),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: shellNavigatorAccountKey,
            routes: [
              GoRoute(
                path: AppRoute.accountScreen.location,
                name: AppRoute.accountScreen.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: AccountScreen(),
                ),
                routes: [
                  GoRoute(
                    path: AppRoute.editMyInformationScreen.name,
                    name: AppRoute.editMyInformationScreen.name,
                    pageBuilder: (context, state) => const NoTransitionPage(
                      child: EditMyInformationScreen(),
                    ),
                  ),
                  GoRoute(
                    path: AppRoute.aboutScreen.name,
                    name: AppRoute.aboutScreen.name,
                    pageBuilder: (context, state) => const NoTransitionPage(
                      child: AboutScreen(),
                    ),
                  ),
                  GoRoute(
                    path: AppRoute.privacyPolicyScreen.name,
                    name: AppRoute.privacyPolicyScreen.name,
                    pageBuilder: (context, state) => const NoTransitionPage(
                      child: PrivacyPolicyScreen(),
                    ),
                  ),
                  GoRoute(
                    path: AppRoute.termsAndConditionsScreen.name,
                    name: AppRoute.termsAndConditionsScreen.name,
                    pageBuilder: (context, state) => const NoTransitionPage(
                      child: TermsAndConditionsScreen(),
                    ),
                  ),
                  GoRoute(
                    path: AppRoute.sendRequestScreen.name,
                    name: AppRoute.sendRequestScreen.name,
                    pageBuilder: (context, state) => const NoTransitionPage(
                      child: SendRequestScreen(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
