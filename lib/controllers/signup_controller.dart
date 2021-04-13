import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController emailIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool isPasswordCorrect = true.obs;
  RxBool isemailIDCorrect = true.obs;

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
    emailIdController.addListener(() {
      if (emailIdController.text.contains("@") &&
          emailIdController.text.length >= 5) {
        isemailIDCorrect.value = true;
      } else if (emailIdController.text.length < 5 &&
          emailIdController.text.length > 0) {
        isemailIDCorrect.value = false;
      }
    });

    super.onInit();
  }
}
