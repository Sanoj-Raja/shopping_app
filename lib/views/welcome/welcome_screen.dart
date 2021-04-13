import 'package:flutter/material.dart';
import 'package:shopping/views/welcome/components/welcome_body.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: welcomeBody(context),
    );
  }
}
