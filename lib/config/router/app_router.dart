import 'package:go_router/go_router.dart';
import 'package:hotel_booking/core/models/hotel.dart';
import 'package:hotel_booking/features/bookmark/presentation/pages/bookmark_page.dart';
import 'package:hotel_booking/features/home/presentation/pages/hotel_details_page.dart';
import 'package:hotel_booking/features/profile/presentation/pages/profile_page.dart';
import 'package:hotel_booking/features/schedule/presentation/pages/schedule_page.dart';

import '../../features/home/presentation/pages/home_page.dart';
import '../../main_page.dart';
import 'app_route_config.dart';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        name: AppRouteConfig.details,
        path: '/details',
        builder: (context, state) =>
            HotelDetailsPage(hotel: state.extra as Hotel),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => MainPage(shell: shell),
        branches: [
          // Home Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: AppRouteConfig.home,
                path: '/home',
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
          // Schedule Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: AppRouteConfig.schedule,
                path: '/schedule',
                builder: (context, state) => const SchedulePage(),
              ),
            ],
          ),
          // Bookmark Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: AppRouteConfig.bookmark,
                path: '/bookmark',
                builder: (context, state) => const BookmarkPage(),
              ),
            ],
          ),
          // Profile Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: AppRouteConfig.profile,
                path: '/profile',
                builder: (context, state) => const ProfilePage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
