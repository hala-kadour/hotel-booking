import 'package:flutter/material.dart';
import 'package:hotel_booking/config/const/strings/assets_path.dart';
import 'package:hotel_booking/core/models/booking.dart';
import 'package:hotel_booking/core/models/hotel.dart';
import 'package:hotel_booking/features/schedule/presentation/widgets/booking_card.dart';

class ScheduledBookings extends StatefulWidget {
  const ScheduledBookings({super.key});

  @override
  State<ScheduledBookings> createState() => _ScheduledBookingsState();
}

class _ScheduledBookingsState extends State<ScheduledBookings> {
  final List<Booking> _bookingList = [
    Booking(
      hotel: Hotel(
        name: "The Aston Vill Hotel",
        location: "Alice Springs NT 0870, Australia",
        rating: 5.0,
        price: 200.7,
        description:
            "Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming",
        imageUrl: AssetsPath.property1,
      ),
      date: DateTime(2024, 9, 19),
    ),
    Booking(
      hotel: Hotel(
        name: "Golden Palace Hotel",
        location: "Nothern Territory 0872, Australia",
        rating: 5.0,
        price: 175.9,
        description:
            "Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming",
        imageUrl: AssetsPath.property1,
      ),
      date: DateTime(2024, 9, 25),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _bookingList.length,
      itemBuilder: (context, index) =>
          BookingCard(booking: _bookingList[index]),
    );
  }
}
