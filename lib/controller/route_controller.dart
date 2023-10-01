import 'package:get/get.dart';

class RouteController extends GetxController {
  RxString activeRoute = "home".obs;
  RxString activeTabNotif = "following".obs;

  void selectPage(String iconName) {
    activeRoute.value = iconName;
  }

  void selectNotifTab(String tabName) {
    activeTabNotif.value = tabName;
  }
}
