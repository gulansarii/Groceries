import 'dart:async';

import 'package:get/get.dart';
import 'package:groceries/screens/onbording_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.off(() => const OnBordingScreen());
    });
    super.onInit();
  }
}
