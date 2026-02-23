import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_fonts.dart';
import 'app_text_styles.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData getAppTheme() {
    return ThemeData(
      fontFamily: AppFonts.mainAppFont,
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      primaryColor: AppColors.primaryColor,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        brightness: Brightness.light,
        primary: AppColors.primaryColor,
        onPrimary: AppColors.white,
        surface: AppColors.white,
        onSurface: AppColors.textPrimary,
        onSurfaceVariant: AppColors.textSecondary,
      ),
      appBarTheme: AppBarTheme(
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        actionsPadding: EdgeInsetsDirectional.only(end: 16.0),
        titleTextStyle: AppTextStyles.titleSemiBold(),
      ),
      tabBarTheme: TabBarThemeData(
        tabAlignment: TabAlignment.start,
        dividerColor: Colors.transparent,
        indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
        labelStyle: AppTextStyles.bodyMedium(color: AppColors.textOnAction),
        unselectedLabelStyle: AppTextStyles.bodyRegular(
          color: AppColors.textSecondary,
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.cardColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          fixedSize: Size(double.infinity, 54),
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.textOnAction,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          textStyle: AppTextStyles.titleSemiBold(color: AppColors.textOnAction),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          alignment: Alignment.center,
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.textActive,
          textStyle: AppTextStyles.bodyMedium(color: AppColors.textActive),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          padding: EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12.0),
            side: BorderSide(color: AppColors.borderDefault),
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.iconDefault,
          iconSize: 24.0,
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.cardColor,
        contentTextStyle: TextStyle(color: AppColors.textPrimary),
      ),
      iconTheme: IconThemeData(color: AppColors.iconDefault, size: 24.0),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.white,
        elevation: 0.0,
      ),
    );
  }
}
