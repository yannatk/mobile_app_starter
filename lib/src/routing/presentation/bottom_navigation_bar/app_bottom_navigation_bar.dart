import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home_filled),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.ac_unit_outlined),
            icon: Icon(Icons.ac_unit_outlined),
            label: 'ScreenTwo',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.access_time_filled),
            icon: Icon(Icons.access_time),
            label: 'ScreenThree',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings),
            label: 'Account',
          ),
        ],
      ),
      body: navigationShell,
    );
  }
}
