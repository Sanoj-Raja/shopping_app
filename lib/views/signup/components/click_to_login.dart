import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/configurations/screen_size_config.dart';
import 'package:shopping/views/login/login_screen.dart';

Row clickToLogIn(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Already have an account?",
          style: TextStyle(
            color: Colors.black,
            fontSize: displayWidth(context) * 0.036,
          )),
      TextButton(
          onPressed: () {
            Get.to(LoginScreen());
          },
          child: Text(
            'Log In',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.black,
              fontSize: displayWidth(context) * 0.036,
            ),
          )),
    ],
  );
}
