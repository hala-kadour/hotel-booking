import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_booking/config/const/strings/assets_path.dart';
import 'package:hotel_booking/config/theme/app_text_styles.dart';
import 'package:hotel_booking/core/helper/device_utility.dart';
import 'package:hotel_booking/core/models/hotel.dart';
import 'package:hotel_booking/core/widgets/main_back_app_bar.dart';
import 'package:hotel_booking/core/widgets/main_scaffold.dart';
import 'package:hotel_booking/features/home/presentation/widgets/benefit_card.dart';
import 'package:hotel_booking/features/home/presentation/widgets/custom_read_more_text.dart';
import 'package:hotel_booking/features/home/presentation/widgets/preview_list.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../config/theme/app_colors.dart';

class HotelDetailsPage extends StatelessWidget {
  const HotelDetailsPage({super.key, required this.hotel});
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      appBar: MainBackAppBar(title: "Details", actionIcon: Iconsax.more),
      body: Padding(
        padding: EdgeInsetsGeometry.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16.0,
            crossAxisAlignment: .start,
            children: [
              // Image
              Container(
                alignment: AlignmentDirectional.topEnd,
                padding: EdgeInsets.all(8.0),

                height: DeviceUtility.getScreenHeight(context) * 0.28,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: AssetImage(hotel.imageUrl),
                    fit: .cover,
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
              // Benefit List
              Row(
                spacing: 8.0,
                children: [
                  BenefitCard(icon: Iconsax.wifi_square, text: 'Free Wifi'),
                  BenefitCard(icon: Iconsax.coffee, text: 'Free Breakfast'),
                  BenefitCard(
                    icon: Iconsax.star1,
                    iconColor: AppColors.yellow,
                    text: '${hotel.rating}',
                  ),
                ],
              ),
              // Name + Price at night
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(hotel.name, style: AppTextStyles.titleMedium()),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "\$${hotel.price}",
                          style: AppTextStyles.titleBold(
                            color: AppColors.textActive,
                          ),
                        ),
                        TextSpan(
                          text: "/night",
                          style: AppTextStyles.bodyRegular(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Location
              Row(
                spacing: 8.0,
                children: [
                  Icon(Iconsax.location, color: AppColors.iconActive),
                  Text(
                    hotel.location,
                    style: AppTextStyles.labelRegalur(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              // Description
              Text("Description", style: AppTextStyles.bodyMedium()),
              CustomReadMoreText(text: hotel.description),
              // Preview
              Text("Preview", style: AppTextStyles.bodyMedium()),
              PreviewList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () {}, child: Text("Booking Now")),
        ),
      ),
    );
  }
}
