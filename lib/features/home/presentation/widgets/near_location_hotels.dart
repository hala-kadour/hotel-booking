import 'package:flutter/material.dart';
import 'package:hotel_booking/config/const/scales/gap.dart';
import 'package:hotel_booking/config/const/strings/assets_path.dart';
import 'package:hotel_booking/core/helper/device_utility.dart';
import 'package:hotel_booking/features/home/presentation/widgets/hotel_card.dart';

import '../../../../core/models/hotel.dart';

class NearLocationHotels extends StatefulWidget {
  const NearLocationHotels({super.key});

  @override
  State<NearLocationHotels> createState() => _NearLocationHotelsState();
}

class _NearLocationHotelsState extends State<NearLocationHotels> {
  final List<Hotel> _hotelList = [
    Hotel(
      name: "The Aston Vill Hotel",
      location: "Alice Springs NT 0870, Australia",
      rating: 5.0,
      price: 200.7,
      description:
          "Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming",
      imageUrl: AssetsPath.property1,
    ),
    Hotel(
      name: "Golden Palace Hotel",
      location: "Nothern Territory 0872, Australia",
      rating: 5.0,
      price: 175.9,
      description:
          "Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming",
      imageUrl: AssetsPath.property1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceUtility.getScreenHeight(context) * 0.35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _hotelList.length,
        itemBuilder: (context, index) => HotelCard(hotel: _hotelList[index]),
        separatorBuilder: (context, index) => Gap.w16,
      ),
    );
  }
}
