import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/screens/home_page.dart';
import 'package:instagram_clone/screens/search_page.dart';

import '../controller/route_controller.dart';

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
        default:
          return Container();
      }
    });
  }
}
