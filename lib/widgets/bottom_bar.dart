import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/controller/route_controller.dart';
import 'package:instagram_clone/utils/colors.dart';

import 'app_icon.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final RouteController routeController = Get.put(RouteController());

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 79,
      color: AppColors.barColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              routeController.selectPage("home");
            },
            child: const AppIcon(
              icon: FluentSystemIcons.ic_fluent_home_filled,
              size: 32,
            ),
          ),
          GestureDetector(
            onTap: () {
              routeController.selectPage("search");
            },
            child: const AppIcon(
              icon: FluentSystemIcons.ic_fluent_search_filled,
              size: 32,
            ),
          ),
          const AppIcon(
            icon: FluentSystemIcons.ic_fluent_add_circle_regular,
            size: 32,
          ),
          const AppIcon(
            icon: FluentSystemIcons.ic_fluent_heart_regular,
            size: 32,
          ),
          const AppIcon(
            icon: Icons.person,
            size: 32,
          ),
        ],
      ),
    );
  }
}
