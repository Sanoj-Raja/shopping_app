import 'package:flutter/material.dart';

Row instagramFacebookLoginIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
            icon: Image.asset('assets/images/ig_icon.png'),
            iconSize: 50,
            onPressed: () {}),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
            icon: Image.asset('assets/images/fb_icon.png'),
            iconSize: 50,
            onPressed: () {}),
      )
    ],
  );
}
