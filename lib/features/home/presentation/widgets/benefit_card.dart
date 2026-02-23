import 'package:flutter/material.dart';
import 'package:hotel_booking/config/theme/app_colors.dart';
import 'package:hotel_booking/config/theme/app_text_styles.dart';

class BenefitCard extends StatelessWidget {
  const BenefitCard({
    super.key,
    required this.icon,
    this.iconColor,
    required this.text,
  });
  final IconData icon;
  final Color? iconColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: AppColors.blueLighter,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        spacing: 4.0,
        children: [
          Icon(icon, color: iconColor),
          Text(text, style: AppTextStyles.labelRegalur()),
        ],
      ),
    );
  }
}
