import 'package:flutter/material.dart';
import 'package:hotel_booking/config/theme/app_colors.dart';

class CustomTabItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final ValueNotifier<int> selectedIndexNotifier;

  const CustomTabItem({
    super.key,
    required this.icon,
    required this.label,
    required this.index,
    required this.selectedIndexNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedIndexNotifier,
      builder: (context, currentIndex, child) {
        bool isSelected = currentIndex == index;

        return Tab(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.blueNormal : AppColors.blueLighter,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 4.0,
              children: [Icon(icon), Text(label)],
            ),
          ),
        );
      },
    );
  }
}
