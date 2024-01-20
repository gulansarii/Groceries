import 'package:get/get.dart';

class ProductController extends GetxController {
  var isContainerVisible = false.obs;

  void toggleContainerVisibility() {
    isContainerVisible.value = !isContainerVisible.value;
  }
}
