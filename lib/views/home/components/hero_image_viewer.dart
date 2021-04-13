import 'package:flutter/material.dart';
import 'package:shopping/configurations/screen_size_config.dart';
import 'package:shopping/constants/constant_strings.dart';

Stack heroImageViewer(BuildContext context) {
  return Stack(
    children: [
      Container(
        child: Image.asset('assets/images/hero_image.png'),
      ),
      Positioned(
        top: displayHeightWithStatusBar(context) * 0.18,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Trendy Fashion Earings',
            style: TextStyle(
                fontSize: displayWidth(context) * 0.08,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
      Positioned(
        top: displayHeightWithStatusBar(context) * 0.225,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: displayWidth(context) * 0.35,
            child: GestureDetector(
              onTap: () {},
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
                        "See More",
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
          ),
        ),
      )
    ],
  );
}
