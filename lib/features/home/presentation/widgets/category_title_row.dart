import 'package:flutter/material.dart';
import 'package:hotel_booking/config/theme/app_text_styles.dart';

class CategoryTitleRow extends StatelessWidget {
  const CategoryTitleRow({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(title, style: AppTextStyles.titleMedium()),
        TextButton(onPressed: () {}, child: Text("See all")),
      ],
    );
  }
}
