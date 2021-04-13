import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/configurations/screen_size_config.dart';
import 'package:shopping/controllers/login_controller.dart';

final loginController = Get.put(LoginController());

Container passwordTextField(BuildContext context) {
  return Container(
    width: displayWidth(context) * 0.8,
    height: displayHeightWithoutStatusBar(context) * 0.08,
    child: Obx(() => TextFormField(
          controller: loginController.passwordController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            errorText: loginController.isPasswordCorrect.value
                ? null
                : "Password must have 6 characters.",
          ),
        )),
  );
}

Container userNameTextField(BuildContext context) {
  return Container(
    width: displayWidth(context) * 0.8,
    height: displayHeightWithoutStatusBar(context) * 0.08,
    child: Obx(() => TextFormField(
          controller: loginController.userNameController,
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'Username',
            errorText: loginController.isUserNameCorrect.value
                ? null
                : "Enter a correct Email-ID.",
          ),
        )),
  );
}
