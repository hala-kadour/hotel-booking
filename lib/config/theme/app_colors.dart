import 'package:flutter/cupertino.dart';

class AppColors {
  AppColors._();

  // Foundation Colors
  static const blackLighter = Color(0xFF939393);
  static const blackNormal = Color(0xFF101010);

  static const grayLighter = Color(0xFFF9F9F9);
  static const grayNormalHover = Color(0xFFE5E5E5);

  static const white = Color(0xFFFFFFFF);
  static const whiteActive = Color(0xFFECECEC);

  static const blueLighter = Color(0xFFF7F7FE);
  static const blueNormal = Color(0xFF4C4DDC);

  // Accent Colors
  static const red = Color(0xFFE74C3C);
  static const yellow = Color(0xFFFFD33C);

  static const scaffoldLinear = LinearGradient(
    colors: [white, Color(0xFFF6F6F6)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // UI
  static const primaryColor = blueNormal;
  static const backgroundColor = white;
  static const scaffoldBackground = Color(0xFFF6F6F6);
  static const cardColor = white;
  static const textPrimary = blackNormal;
  static const textSecondary = blackLighter;
  static const textActive = primaryColor;
  static const textOnAction = white;
  static const iconDefault = blackNormal;
  static const iconDisable = blackLighter;
  static const iconActive = primaryColor;
  static const borderDefault = whiteActive;
}
