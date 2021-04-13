import 'package:flutter/material.dart';
import 'package:shopping/widgets/custom_sliver_appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: CustomScrollView(
          slivers: [customSliverAppbar()],
        ),
      ),
    );
  }
}
