import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/configurations/screen_size_config.dart';
import 'package:shopping/views/signup/signup_screen.dart';

Row clickToSignup(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Don't have an account?",
          style: TextStyle(
            color: Colors.black,
            fontSize: displayWidth(context) * 0.036,
          )),
      TextButton(
          onPressed: () {
            Get.to(SignUpScreen());
          },
          child: Text(
            'Sign Up',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.black,
              fontSize: displayWidth(context) * 0.036,
            ),
          )),
    ],
  );
}
