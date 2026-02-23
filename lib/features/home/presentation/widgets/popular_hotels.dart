import 'package:flutter/material.dart';
import 'package:hotel_booking/features/home/presentation/widgets/hotel_list_tile.dart';

import '../../../../config/const/strings/assets_path.dart';
import '../../../../core/models/hotel.dart';

class PopularHotels extends StatefulWidget {
  const PopularHotels({super.key});

  @override
  State<PopularHotels> createState() => _PopularHotelsState();
}

class _PopularHotelsState extends State<PopularHotels> {
  final List<Hotel> _hotelList = [
    Hotel(
      name: "Asteria Hotel",
      location: "Wilora NT 0872, Australia",
      rating: 5.0,
      price: 165.3,
      description:
          "Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel. elegant 5 star hotel overlooking the sea. perfect for a romantic, charming",
      imageUrl: AssetsPath.property3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _hotelList.length,
      itemBuilder: (context, index) => HotelListTile(hotel: _hotelList[index]),
    );
  }
}
