import 'package:flutter/material.dart';
import 'package:shopping/configurations/screen_size_config.dart';
import 'package:shopping/views/login/components/login_button.dart';
import 'package:shopping/views/login/components/username_password_text_field.dart';

Column mainLoginColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        "Log In",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: displayWidth(context) * 0.067,
        ),
      ),
      const SizedBox(height: 8.0),
      userNameTextField(context),
      passwordTextField(context),
      TextButton(
          onPressed: () {
            print('User Forgot the Password.');
          },
          child: Text(
            'Forgot Password?',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.black,
              fontSize: displayWidth(context) * 0.036,
            ),
          )),
      loginButton(context)
    ],
  );
}
