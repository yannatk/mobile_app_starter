import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    required this.title,
    this.onTap,
    super.key,
  });

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: Sizes.p16,
        color: AppColors.black,
      ),
      onTap: onTap,
    );
  }
}
