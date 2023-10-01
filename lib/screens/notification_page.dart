import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/bar/notification_page_app_bar.dart';
import 'package:instagram_clone/controller/route_controller.dart';
import 'package:instagram_clone/screens/following_page.dart';
import 'package:instagram_clone/screens/you_page.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    final RouteController routeController = Get.put(RouteController());
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            //appbar
            NotificationPageAppBar(),
            //body
            Obx(() {
              var activeNotif = routeController.activeTabNotif.value;
              return Container(
                child: activeNotif == "following" ? FollowingPage() : YouPage(),
              );
            }),
          ],
        ),
      ),
    );
  }
}
