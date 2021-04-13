import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool isPasswordCorrect = true.obs;
  RxBool isUserNameCorrect = true.obs;

  @override
  void onInit() {
    passwordController.addListener(() {
      if (passwordController.text.length >= 6) {
        isPasswordCorrect.value = true;
      } else if (passwordController.text.length < 6 &&
          passwordController.text.length > 0) {
        isPasswordCorrect.value = false;
      }
    });
    userNameController.addListener(() {
      if (userNameController.text.contains("@") && userNameController.text.length >= 5) {
        isUserNameCorrect.value = true;
      }
      else if (userNameController.text.length < 5 &&
          userNameController.text.length > 0) {
        isUserNameCorrect.value = false;
      }
    });

    super.onInit();
  }
}
