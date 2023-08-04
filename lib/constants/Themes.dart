import 'package:flutter/material.dart';
import 'package:nationality_prediction/constants/colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    primaryColorDark: AppColors.blackColor,
    primaryColorLight: AppColors.whiteColor,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor.withOpacity(.7),
      centerTitle: true,
      elevation: 5,
      titleTextStyle: const TextStyle(
        fontSize: 25,
        color: AppColors.blackColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}