import 'package:flutter/cupertino.dart';

import 'app_colors.dart';
import 'app_fonts.dart';

class AppTextStyles {
  AppTextStyles._();
  // 16 : Medium, Semi bold, Bold
  static TextStyle titleBold({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w700,
      fontFamily: AppFonts.mainAppFont,
      fontSize: 16,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle titleSemiBold({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w600,
      fontFamily: AppFonts.mainAppFont,
      fontSize: 16,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle titleMedium({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w500,
      fontFamily: AppFonts.mainAppFont,
      fontSize: 16,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  //14 : Regular, Medium, Semi bold, Blod
  static TextStyle bodyRegular({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.mainAppFont,
      fontSize: 14,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle bodyMedium({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w500,
      fontFamily: AppFonts.mainAppFont,
      fontSize: 14,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle bodySemiBold({
    Color? color,
    double? hight,
    double? letterSpacing,
    String? fontFamily,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily ?? AppFonts.mainAppFont,
      fontSize: 14,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle bodyBold({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w700,
      fontFamily: AppFonts.mainAppFont,
      fontSize: 14,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  //12: Light ,Regular, Medium, Semi bold ,Bold
  static TextStyle labelLight({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w300,
      fontFamily: AppFonts.mainAppFont,
      fontSize: 12,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle labelRegalur({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.mainAppFont,
      fontSize: 12,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle labelMedium({
    Color? color,
    double? hight,
    double? letterSpacing,
    String? fontFamily,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w500,
      fontFamily: fontFamily ?? AppFonts.mainAppFont,
      fontSize: 12,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle labelSemiBold({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w600,
      fontFamily: AppFonts.mainAppFont,
      fontSize: 12,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle labelBold({
    Color? color,
    double? hight,
    double? letterSpacing,
    String? fontFamily,
  }) {
    return TextStyle(
      color: color ?? AppColors.textPrimary,
      fontWeight: FontWeight.w700,
      fontFamily: fontFamily ?? AppFonts.mainAppFont,
      fontSize: 12,
      height: hight ?? 1.5,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }
}
