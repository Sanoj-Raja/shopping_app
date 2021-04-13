import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/configurations/screen_size_config.dart';
import 'package:shopping/controllers/signup_controller.dart';

final signUpController = Get.put(SignUpController());

Container passwordTextField(BuildContext context) {
  return Container(
    width: displayWidth(context) * 0.8,
    height: displayHeightWithoutStatusBar(context) * 0.08,
    child: Obx(() => TextFormField(
          controller: signUpController.passwordController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            errorText: signUpController.isPasswordCorrect.value
                ? null
                : "Password must have 6 characters.",
          ),
        )),
  );
}

Container emailIDTextField(BuildContext context) {
  return Container(
    width: displayWidth(context) * 0.8,
    height: displayHeightWithoutStatusBar(context) * 0.08,
    child: Obx(() => TextFormField(
          controller: signUpController.emailIdController,
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'Email Id',
            errorText: signUpController.isemailIDCorrect.value
                ? null
                : "Enter a correct Email-ID.",
          ),
        )),
  );
}
