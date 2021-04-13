import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/views/welcome/welcome_screen.dart';
import 'constants/constant_strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryLightColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
