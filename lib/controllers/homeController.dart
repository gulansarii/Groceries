import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:groceries/screens/explore_screen.dart';
import 'package:groceries/screens/home_screen.dart';

class HomeScreenController extends GetxController {
  TextEditingController searchController = TextEditingController();
  var currentIndex = 0.obs;

  final List<Widget> pages = [
    HomeScreen(),
    ExploreScreen(),
  ];

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}
