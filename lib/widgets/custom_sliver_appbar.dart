import 'package:flutter/material.dart';

SliverAppBar customSliverAppbar() {
  return SliverAppBar(
    backgroundColor: Colors.white,
    primary: false,
    leading: IconButton(
        iconSize: 35.0,
        icon: Icon(Icons.menu),
        color: Colors.black,
        onPressed: () {}),
    actions: [
      IconButton(
        iconSize: 190.0,
        icon: Image.asset("assets/images/app_logo.png"),
        onPressed: () {},
      ),
      IconButton(
          iconSize: 35.0,
          icon: Icon(Icons.search_outlined),
          color: Colors.black,
          onPressed: () {}),
      const SizedBox(
        width: 20.0,
      ),
      IconButton(
          iconSize: 35.0,
          icon: Icon(Icons.favorite_border_outlined),
          color: Colors.black,
          onPressed: () {}),
      const SizedBox(
        width: 20.0,
      )
    ],
  );
}
