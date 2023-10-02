import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/screens/home_page.dart';
import 'package:instagram_clone/bar/notification_page_app_bar.dart';
import 'package:instagram_clone/screens/profile_page.dart';
import 'package:instagram_clone/screens/search_page.dart';

import '../screens/notification_page.dart';
import 'route_controller.dart';

class ScreenGenerator extends StatelessWidget {
  const ScreenGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    final RouteController routeController = Get.put(RouteController());

    return Obx(() {
      switch (routeController.activeRoute.value) {
        case "home":
          return const HomePage();
        case "search":
          return const SearchPage();
        case "notification":
          return const NotificationPage();
        case "profile":
          return const ProfilePage();
        default:
          return Container();
      }
    });
  }
}
