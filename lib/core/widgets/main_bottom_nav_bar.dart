import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hotel_booking/config/theme/app_colors.dart';
import 'package:hotel_booking/config/theme/app_text_styles.dart';
import 'package:iconsax/iconsax.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: AppColors.white,
        child: GNav(
          gap: 8,
          iconSize: 24.0,
          backgroundColor: Theme.of(context).colorScheme.surface,
          selectedIndex: currentIndex,
          onTabChange: onTap,
          color: AppColors.iconDisable,
          activeColor: AppColors.iconActive,
          tabBackgroundColor: AppColors.blueLighter,
          textStyle: AppTextStyles.labelSemiBold(
            color: Theme.of(context).primaryColor,
          ),
          padding: const EdgeInsets.all(12.0),
          tabs: [
            GButton(
              // Home: من home_2 (Linear) إلى home_1 (Bold/Bulk)
              icon: currentIndex == 0 ? Iconsax.home_15 : Iconsax.home_2,
              text: 'Home',
            ),
            GButton(
              // Schedule: من calendar_1 (Linear) إلى calendar (Bold)
              icon: currentIndex == 1 ? Iconsax.calendar5 : Iconsax.calendar_1,
              text: 'Schedule',
            ),
            GButton(
              // Bookmark: من bookmark (Linear) إلى bookmark5 (Bold)
              icon: currentIndex == 2 ? Iconsax.bookmark5 : Iconsax.bookmark,
              text: 'Bookmark',
            ),
            GButton(
              // Profile: من frame_1 (Linear) إلى user_tick (Bold) أو حسب مسمى المكتبة لديكِ
              icon: currentIndex == 3 ? Iconsax.frame5 : Iconsax.frame_1,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
