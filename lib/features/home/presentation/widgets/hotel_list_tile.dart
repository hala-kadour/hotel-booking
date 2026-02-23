import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_booking/config/const/scales/gap.dart';
import 'package:hotel_booking/config/router/app_route_config.dart';
import 'package:hotel_booking/config/theme/app_colors.dart';
import 'package:hotel_booking/core/helper/device_utility.dart';
import 'package:hotel_booking/core/models/hotel.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../config/theme/app_fonts.dart';
import '../../../../config/theme/app_text_styles.dart';

class HotelListTile extends StatelessWidget {
  const HotelListTile({super.key, required this.hotel});
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(AppRouteConfig.details, extra: hotel),
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: AppColors.white,
        ),
        child: Row(
          spacing: 12.0,
          children: [
            Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(hotel.imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            Column(
              crossAxisAlignment: .start,
              children: [
                SizedBox(
                  width: DeviceUtility.getScreenWidth(context) * 0.55,
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(hotel.name, style: AppTextStyles.bodyMedium()),
                      Row(
                        spacing: 4.0,
                        children: [
                          Icon(Iconsax.star1, color: AppColors.yellow),
                          Text(
                            "${hotel.rating}",
                            style: AppTextStyles.labelBold(
                              fontFamily: AppFonts.plusJakartaSans,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  hotel.location,
                  style: AppTextStyles.labelRegalur(
                    color: AppColors.textSecondary,
                  ),
                ),
                Gap.h16,
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$${hotel.price}",
                        style: AppTextStyles.bodyBold(
                          color: AppColors.textActive,
                        ),
                      ),
                      TextSpan(
                        text: "/night",
                        style: AppTextStyles.labelRegalur(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
