
  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/configurations/screen_size_config.dart';
import 'package:shopping/views/login/login_screen.dart';

Container languageContainerButton(
      BuildContext context, language, imageAsset) {
    return Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black, spreadRadius: 1),
            ],
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            color: Colors.white),
        width: displayWidth(context) * 0.76,
        height: displayHeightWithoutStatusBar(context) * 0.06,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {
                  Get.to(LoginScreen());
                },
                child: Text(
                  '$language',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: displayWidth(context) * 0.06,
                  ),
                )),
            IconButton(
              icon: Image.asset('$imageAsset'),
              iconSize: 70,
              onPressed: () {},
            )
          ],
        ));
  }