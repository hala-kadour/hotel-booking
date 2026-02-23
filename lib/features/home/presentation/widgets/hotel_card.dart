import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_booking/config/const/scales/gap.dart';
import 'package:hotel_booking/config/const/strings/assets_path.dart';
import 'package:hotel_booking/config/router/app_route_config.dart';
import 'package:hotel_booking/config/theme/app_colors.dart';
import 'package:hotel_booking/config/theme/app_fonts.dart';
import 'package:hotel_booking/config/theme/app_text_styles.dart';
import 'package:hotel_booking/core/helper/device_utility.dart';
import 'package:hotel_booking/core/models/hotel.dart';
import 'package:iconsax/iconsax.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key, required this.hotel});
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(AppRouteConfig.details, extra: hotel),
      child: Container(
        width: DeviceUtility.getScreenWidth(context) * 0.6,
        clipBehavior: .hardEdge,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Container(
                alignment: AlignmentDirectional.topEnd,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(hotel.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12.0),
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: AppColors.white,
                  child: SvgPicture.asset(
                    AssetsPath.heart,
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 12.0,
                vertical: 10,
              ),
              child: Column(
                spacing: 8.0,
                crossAxisAlignment: .start,
                children: [
                  Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
