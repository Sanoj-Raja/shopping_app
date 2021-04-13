import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/configurations/screen_size_config.dart';
import 'package:shopping/views/login/components/click_to_signup.dart';
import 'package:shopping/views/login/components/instagram_facebook_login_icons.dart';
import 'package:shopping/views/login/components/main_login_column.dart';
import 'package:shopping/widgets/botton_nav_bar.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
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
              SizedBox(height: displayHeightWithoutStatusBar(context) * 0.014),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Login to get started & experience great shopping deals',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: displayWidth(context) * 0.04,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              SizedBox(height: displayHeightWithoutStatusBar(context) * 0.06),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: displayHeightWithoutStatusBar(context) * 0.38,
                  width: displayWidth(context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: mainLoginColumn(context),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Get.to(BottomNavigationScreen());
                  },
                  child: Text(
                    'Continue As Guest >',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: displayWidth(context) * 0.036,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("-OR-",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: displayWidth(context) * 0.045,
                        fontWeight: FontWeight.w300)),
              ),
              instagramFacebookLoginIcons(),
              SizedBox(height: displayHeightWithoutStatusBar(context) * 0.01),
              clickToSignup(context),
            ],
          ),
        ),
      ),
    ));
  }
}
