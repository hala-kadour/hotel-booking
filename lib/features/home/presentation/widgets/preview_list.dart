import 'package:flutter/widgets.dart';
import 'package:hotel_booking/config/const/strings/assets_path.dart';

import '../../../../config/const/scales/gap.dart';
import '../../../../core/helper/device_utility.dart';

class PreviewList extends StatefulWidget {
  const PreviewList({super.key});

  @override
  State<PreviewList> createState() => _PreviewListState();
}

class _PreviewListState extends State<PreviewList> {
  final List<String> _imagesList = [
    AssetsPath.property4,
    AssetsPath.property5,
    AssetsPath.property5,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceUtility.getScreenHeight(context) * 0.1,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _imagesList.length,
        itemBuilder: (context, index) => Container(
          width: 98.0,
          height: 64.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(_imagesList[index]),
              fit: .cover,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        separatorBuilder: (context, index) => Gap.w16,
      ),
    );
  }
}
