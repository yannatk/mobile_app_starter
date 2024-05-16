import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';
import 'package:mobile_app_starter/src/localization/string_hardcoded.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey('AppBottomNavigationBar'));

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _goBranch,
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
            selectedIcon: const Icon(Icons.home_filled, color: AppColors.white),
            icon: const Icon(Icons.home),
            label: 'Home'.hardcoded,
          ),
          NavigationDestination(
            selectedIcon:
                const Icon(Icons.ac_unit_outlined, color: AppColors.white),
            icon: const Icon(Icons.ac_unit_outlined),
            label: 'ScreenTwo'.hardcoded,
          ),
          NavigationDestination(
            selectedIcon:
                const Icon(Icons.access_time_filled, color: AppColors.white),
            icon: const Icon(Icons.access_time),
            label: 'ScreenThree'.hardcoded,
          ),
          NavigationDestination(
            selectedIcon: const Icon(Icons.settings, color: AppColors.white),
            icon: const Icon(Icons.settings),
            label: 'Account'.hardcoded,
          ),
        ],
      ),
      body: navigationShell,
    );
  }
}
