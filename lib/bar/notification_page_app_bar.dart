import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/controller/route_controller.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/big_text.dart';

class NotificationPageAppBar extends StatefulWidget {
  const NotificationPageAppBar({super.key});

  @override
  State<NotificationPageAppBar> createState() => _NotificationPageAppBarState();
}

class _NotificationPageAppBarState extends State<NotificationPageAppBar> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final RouteController routeController = Get.put(RouteController());

    return Container(
      height: 64,
      color: AppColors.barColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //following
          GestureDetector(
            onTap: () {
              routeController.selectNotifTab("following");
            },
            child: Obx(() {
              var activeNotif = routeController.activeTabNotif.value;
              return Container(
                width: width / 2,
                height: 64,
                decoration: activeNotif == "following"
                    ? const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white),
                        ),
                      )
                    : null,
                child: Center(
                  child: BigText(
                    text: "Following",
                    size: 16,
                    fontWeight: activeNotif == "following" ? FontWeight.bold : null,
                  ),
                ),
              );
            }),
          ),
          //You
          GestureDetector(
            onTap: () {
              routeController.selectNotifTab("you");
            },
            child: Obx(() {
              var activeNotif = routeController.activeTabNotif.value;
              return Container(
                width: width / 2,
                height: 64,
                decoration: activeNotif == "you"
                    ? const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white),
                        ),
                      )
                    : null,
                child: Center(
                  child: BigText(
                    text: "You",
                    size: 16,
                    fontWeight: activeNotif == "you" ? FontWeight.bold : null,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
