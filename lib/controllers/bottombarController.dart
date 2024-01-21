import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/screens/explore_screen.dart';
import 'package:groceries/screens/favourite_screen.dart';
import 'package:groceries/screens/home_screen.dart';
import 'package:groceries/screens/mycart_screen.dart';

class BottomBarController extends GetxController {
  var currentIndex = 0.obs;

  final List<Widget> pages = [
    HomeScreen(),
    ExploreScreen(),
    MyCartScreen(),
    FavouriteScreen()
  ];

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}
