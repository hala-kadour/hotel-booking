import 'package:flutter/material.dart';
import 'package:hotel_booking/config/const/scales/gap.dart';
import 'package:hotel_booking/core/widgets/main_back_app_bar.dart';
import 'package:hotel_booking/core/widgets/main_scaffold.dart';
import 'package:hotel_booking/features/home/presentation/widgets/category_title_row.dart';
import 'package:hotel_booking/features/schedule/presentation/widgets/scheduled_bookings.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/custom_calender.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      appBar: MainBackAppBar(title: "Schedule", actionIcon: Iconsax.setting_2),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomCalendar(),
            Gap.h16,
            // My Schedule
            CategoryTitleRow(title: "My Schedule"),
            Gap.h16,
            // Booking Cards
            ScheduledBookings(),
          ],
        ),
      ),
    );
  }
}
