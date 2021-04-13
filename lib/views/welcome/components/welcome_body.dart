import 'package:flutter/material.dart';
import 'package:shopping/configurations/screen_size_config.dart';
import 'package:shopping/views/welcome/components/language_container_button.dart';

SafeArea welcomeBody(BuildContext context) {
  return SafeArea(
      child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome',
          style: TextStyle(
              fontSize: displayWidth(context) * 0.08,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        const SizedBox(height: 90),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: displayHeightWithoutStatusBar(context) * 0.28,
            width: displayWidth(context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Select Language",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: displayWidth(context) * 0.058,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  languageContainerButton(
                      context, "English", "assets/images/england_flag.png"),
                  languageContainerButton(
                      context, "Hindi", "assets/images/india_flag.png"),
                ],
              ),
            ),
          ),
        )
      ],
    ),
  ));
}
