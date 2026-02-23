import 'package:flutter/material.dart';
import 'package:hotel_booking/config/const/scales/gap.dart';
import 'package:hotel_booking/config/theme/app_colors.dart';
import 'package:hotel_booking/core/helper/date_format.dart';
import 'package:hotel_booking/core/helper/device_utility.dart';
import 'package:hotel_booking/core/models/booking.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../config/theme/app_text_styles.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key, required this.booking});
  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Container(
            width: 84,
            height: 84,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(booking.hotel.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          Gap.w16,
          SizedBox(
            width: DeviceUtility.getScreenWidth(context) * 0.6,
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(booking.hotel.name, style: AppTextStyles.bodyMedium()),
                    Gap.h4,
                    Row(
                      children: [
                        Icon(
                          Iconsax.calendar_1,
                          size: 16.0,
                          color: AppColors.iconDisable,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          dateFormat(booking.date),
                          style: AppTextStyles.labelRegalur(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    Gap.h8,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "\$${booking.hotel.price}",
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
                Icon(Iconsax.arrow_right_3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
