import 'package:al_khalifa_dashboard/app/data/app_colors.dart';
import 'package:al_khalifa_dashboard/app/data/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xfff9fafb),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      scrolledUnderElevation: 0,
    ),
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
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppColors.primaryColor,
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        textStyle: AppTextStyles.medium20.copyWith(color: AppColors.whiteColor),
      ),
    ),
    dialogTheme: DialogThemeData(backgroundColor: AppColors.whiteColor),
  );
}
