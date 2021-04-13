import 'package:flutter/material.dart';
import 'package:shopping/views/home/components/hero_image_viewer.dart';
import 'package:shopping/views/home/components/product_tile.dart';
import 'package:shopping/widgets/custom_sliver_appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            customSliverAppbar(),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: [
                  heroImageViewer(context),
                ],
              )
            ])),
            SliverGrid(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: productTile(context, index),
                  );
                },
                childCount: 6, // Your desired amount of children here
              ),
            ),
          ],
        ),
      ),
    );
  }
}
