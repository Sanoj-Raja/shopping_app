import 'package:get/get.dart';

class NavBarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void changeIndexOnTap(int index) {
    selectedIndex.value = index;
  }
}
