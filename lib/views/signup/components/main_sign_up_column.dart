import 'package:flutter/material.dart';
import 'package:shopping/configurations/screen_size_config.dart';
import 'package:shopping/views/signup/components/sign_up_button.dart';
import 'package:shopping/views/signup/components/email_password_text_field.dart';

Column mainSignUpColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        "Sign Up",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: displayWidth(context) * 0.067,
        ),
      ),
      const SizedBox(height: 8.0),
      emailIDTextField(context),
      passwordTextField(context),
      signUpButton(context)
    ],
  );
}
