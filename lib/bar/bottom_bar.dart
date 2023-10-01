import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/controller/route_controller.dart';
import 'package:instagram_clone/utils/colors.dart';

import '../widgets/app_icon.dart';

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
          //home
          GestureDetector(
            onTap: () {
              routeController.selectPage("home");
            },
            child: Obx(
              () => AppIcon(
                icon: routeController.activeRoute.value == "home" ? FluentSystemIcons.ic_fluent_home_filled : FluentSystemIcons.ic_fluent_home_regular,
                size: 32,
              ),
            ),
          ),
          //search
          GestureDetector(
            onTap: () {
              routeController.selectPage("search");
            },
            child: Obx(
              () => AppIcon(
                icon: routeController.activeRoute.value == "search" ? FluentSystemIcons.ic_fluent_search_filled : FluentSystemIcons.ic_fluent_search_regular,
                size: 32,
              ),
            ),
          ),
          //live
          GestureDetector(
            onTap: () {
              routeController.selectPage("live");
            },
            child: Obx(
              () => AppIcon(
                icon: routeController.activeRoute.value == "live" ? FluentSystemIcons.ic_fluent_add_circle_filled : FluentSystemIcons.ic_fluent_add_circle_regular,
                size: 32,
              ),
            ),
          ),

          //notification
          GestureDetector(
            onTap: () {
              routeController.selectPage("notification");
            },
            child: Obx(
              () => AppIcon(
                icon: routeController.activeRoute.value == "notification" ? FluentSystemIcons.ic_fluent_heart_filled : FluentSystemIcons.ic_fluent_heart_regular,
                size: 32,
              ),
            ),
          ),

          //profile
          GestureDetector(
            onTap: () {
              routeController.selectPage("profile");
            },
            child: Obx(
              () => AppIcon(
                icon: routeController.activeRoute.value == "profile" ? Icons.person : Icons.person_2_outlined,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
