import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/controllers/bottombarController.dart';
import 'package:groceries/screens/explore_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  final bottomBarController = Get.put(BottomBarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => BottomNavigationBar(
          currentIndex: bottomBarController.currentIndex.value,
          onTap: (index) {
            bottomBarController.changeTabIndex(index);
          },
          selectedItemColor: const Color.fromRGBO(83, 177, 117, 1),
          unselectedItemColor: Colors.black.withOpacity(.8),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.store_outlined),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
