import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/configurations/screen_size_config.dart';
import 'package:shopping/constants/constant_strings.dart';
import 'package:shopping/widgets/botton_nav_bar.dart';

Container loginButton(BuildContext context) {
  return Container(
    width: displayWidth(context) * 0.86,
    height: displayHeightWithoutStatusBar(context) * 0.05,
    child: GestureDetector(
      onTap: () {
        Get.to(BottomNavigationScreen());
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: kPrimaryColor,
            style: BorderStyle.solid,
            width: 1.0,
          ),
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "SIGN IN",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: displayWidth(context) * 0.056,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
