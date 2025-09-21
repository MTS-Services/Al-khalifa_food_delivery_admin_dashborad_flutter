import 'package:al_khalifa_dashboard/app/data/app_colors.dart';
import 'package:al_khalifa_dashboard/app/data/app_text_styles.dart';
import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.strokeColor),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.strokeColor),
        borderRadius: BorderRadius.circular(10),
      ),
    ),

  );
}
