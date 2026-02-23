import 'package:flutter/cupertino.dart';
import 'package:readmore/readmore.dart';

import '../../../../config/theme/app_colors.dart';
import '../../../../config/theme/app_text_styles.dart';

class CustomReadMoreText extends StatelessWidget {
  const CustomReadMoreText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 3,
      trimMode: TrimMode.Line,
      isExpandable: true,
      trimCollapsedText: ' Read More',
      trimExpandedText: ' Hide',
      style: AppTextStyles.labelLight(color: AppColors.textSecondary),
      moreStyle: AppTextStyles.labelMedium(color: AppColors.textActive),
      lessStyle: AppTextStyles.labelMedium(color: AppColors.textActive),
    );
  }
}
