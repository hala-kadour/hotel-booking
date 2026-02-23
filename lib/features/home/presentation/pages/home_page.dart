import 'package:flutter/material.dart';
import 'package:hotel_booking/config/const/scales/gap.dart';
import 'package:hotel_booking/core/widgets/main_scaffold.dart';
import 'package:hotel_booking/features/home/presentation/widgets/category_title_row.dart';
import 'package:hotel_booking/features/home/presentation/widgets/home_app_bar.dart';
import 'package:hotel_booking/features/home/presentation/widgets/near_location_hotels.dart';
import 'package:hotel_booking/features/home/presentation/widgets/popular_hotels.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/custom_tab_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<int> _tabIndexNotifier = ValueNotifier<int>(0);
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        _tabIndexNotifier.value = _tabController.index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabController.length,
      child: SafeArea(
        child: MainScaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              spacing: 8.0,
              children: [
                HomeAppBar(),
                Gap.h8,
                TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabs: [
                    CustomTabItem(
                      icon: Iconsax.house_2,
                      label: "Hotel",
                      index: 0,
                      selectedIndexNotifier: _tabIndexNotifier,
                    ),
                    CustomTabItem(
                      icon: Iconsax.building_3,
                      label: "Homestay",
                      index: 1,
                      selectedIndexNotifier: _tabIndexNotifier,
                    ),
                    CustomTabItem(
                      icon: Iconsax.buildings,
                      label: "Apart",
                      index: 2,
                      selectedIndexNotifier: _tabIndexNotifier,
                    ),
                    CustomTabItem(
                      icon: Iconsax.house,
                      label: "Renthouse",
                      index: 3,
                      selectedIndexNotifier: _tabIndexNotifier,
                    ),
                  ],
                ),
                CategoryTitleRow(title: "Near Location"),
                NearLocationHotels(),
                CategoryTitleRow(title: "Popular Hotel"),
                PopularHotels(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
