import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controllers/nav_bar_controller.dart';
import 'package:shopping/views/category/category_screen.dart';
import 'package:shopping/views/home/home_screen.dart';
import 'package:shopping/views/shopping_bag/shopping_bag_screen.dart';
import 'package:shopping/views/user_account_screen/user_account_screen.dart';

class BottomNavigationScreen extends StatelessWidget {
  final navBarController = Get.put(NavBarController());
  final List<Widget> availableBodyScreens = [
    HomeScreen(),
    CategoryScreen(),
    ShoppingBagScreen(),
    UserAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => availableBodyScreens[navBarController.selectedIndex.value],
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
              selectedFontSize: 12,
              unselectedFontSize: 12,
              type: BottomNavigationBarType.fixed,
              currentIndex: navBarController.selectedIndex.value,
              onTap: (index) => navBarController.changeIndexOnTap(index),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined, size: 40.0),
                    activeIcon: Icon(Icons.home, size: 40.0),
                    label: "Home"
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category_outlined, size: 40.0),
                    activeIcon: Icon(Icons.category, size: 40.0),
                    label: "Category"
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag_outlined, size: 40.0),
                    activeIcon: Icon(Icons.shopping_bag, size: 40.0),
                    label: "Shopping Bag"
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.people_outline, size: 40.0),
                    activeIcon: Icon(Icons.people, size: 40.0),
                    label: "Account"
                    ),
              ])),
    );
  }
}
