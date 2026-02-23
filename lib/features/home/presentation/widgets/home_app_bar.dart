import 'package:flutter/material.dart';
import 'package:hotel_booking/config/theme/app_colors.dart';
import 'package:hotel_booking/config/theme/app_fonts.dart';
import 'package:hotel_booking/config/theme/app_text_styles.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Column(
          spacing: 8.0,
          crossAxisAlignment: .start,
          children: [
            Text(
              "Current location",
              style: AppTextStyles.labelRegalur(color: AppColors.textSecondary),
            ),
            Row(
              spacing: 8.0,
              children: [
                Icon(Iconsax.location, color: AppColors.iconActive),
                Text(
                  "Wallace, Australia",
                  style: AppTextStyles.bodySemiBold(
                    fontFamily: AppFonts.plusJakartaSans,
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(onPressed: () {}, icon: Icon(Iconsax.notification_bing)),
      ],
    );
  }
}
