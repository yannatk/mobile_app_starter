import 'package:flutter/material.dart';
import 'package:mobile_app_starter/src/constants/app_colors.dart';
import 'package:mobile_app_starter/src/constants/app_sizes.dart';

ThemeData appTheme() {
  return ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.black,
      elevation: 0,
    ),
    primaryColor: AppColors.black,
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.black,
      textTheme: ButtonTextTheme.primary,
    ),
    scaffoldBackgroundColor: AppColors.white,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.black,
        side: const BorderSide(color: AppColors.black),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.black,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.black,
      foregroundColor: AppColors.white,
    ),
    navigationBarTheme: NavigationBarThemeData(
      surfaceTintColor: AppColors.white,
      backgroundColor: AppColors.white,
      indicatorColor: AppColors.black,
      iconTheme: MaterialStateProperty.all(
        const IconThemeData(color: AppColors.grey),
      ),
    ),
    iconTheme: const IconThemeData(color: AppColors.black),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStateProperty.all(AppColors.black),
      ),
    ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: MaterialStateProperty.all(AppColors.white),
      surfaceTintColor: MaterialStateProperty.all(AppColors.white),
      hintStyle: MaterialStateProperty.all(
        const TextStyle(color: AppColors.grey, fontSize: Sizes.p14),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      surfaceTintColor: AppColors.white,
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Sizes.p20),
        ),
      ),
    ),
  );
}
