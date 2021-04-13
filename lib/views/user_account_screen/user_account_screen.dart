import 'package:flutter/material.dart';
import 'package:shopping/configurations/screen_size_config.dart';

class UserAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Text(
          'Profile Screen.',
          style: TextStyle(
              fontSize: displayWidth(context) * 0.08,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        )),
      ),
    );
  }
}
