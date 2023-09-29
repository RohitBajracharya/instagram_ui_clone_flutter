import 'package:get/get.dart';

class RouteController extends GetxController {
  RxString activeRoute = "home".obs;

  void selectPage(String iconName) {
    activeRoute.value = iconName;
  }
}
