import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/route_controller.dart';
import '../widgets/app_icon.dart';

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final RouteController routeController = Get.put(RouteController());
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //following
          GestureDetector(
            onTap: () {
              routeController.selectProfileTab("allPost");
            },
            child: Obx(() {
              var activeTabProfile = routeController.activeTabProfile.value;
              return Container(
                width: width / 2,
                height: 64,
                decoration: activeTabProfile == "allPost"
                    ? const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white),
                        ),
                      )
                    : null,
                child: const Center(
                  child: AppIcon(icon: Icons.grid_on_sharp, size: 32),
                ),
              );
            }),
          ),
          //You
          GestureDetector(
            onTap: () {
              routeController.selectProfileTab("taggedPost");
            },
            child: Obx(() {
              var activeTabProfile = routeController.activeTabProfile.value;

              return Container(
                width: width / 2,
                height: 64,
                decoration: activeTabProfile == "taggedPost"
                    ? const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white),
                        ),
                      )
                    : null,
                child: const Center(
                  child: AppIcon(icon: FluentSystemIcons.ic_fluent_person_board_regular, size: 32),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
