import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/controllers/productdetailController.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final productController = Get.put(ProductController());
  final double initialRating = 3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * .06,
        backgroundColor: Colors.grey.shade200,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.ios_share_rounded))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: Get.height * .28,
            width: Get.width,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/illustration.png')),
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 36,
            width: Get.width,
            child: Row(
              children: [
                const Text(
                  'Naturel Red Apple',
                  style: TextStyle(fontSize: 20),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined))
              ],
            ),
          ),
          Container(
            height: Get.height * .03,
            width: Get.width,
            color: Colors.grey,
            child: Text('data'),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: Get.height * .06,
            width: Get.width,
            child: Row(
              children: [
                Container(
                  height: Get.height * .07,
                  width: Get.width * .13,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                ),
                Container(
                  height: Get.height * .07,
                  width: Get.width * .13,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.shade300, // Set border color
                          width: 2.0),
                      borderRadius: BorderRadius.circular(18)),
                ),
                Container(
                  height: Get.height * .07,
                  width: Get.width * .13,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Color.fromRGBO(83, 177, 117, 1),
                      )),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  height: Get.height * .07,
                  width: Get.width * .3,
                  color: Colors.grey,
                  child: Text('data'),
                ),
              ],
            ),
          ),
          const Divider(
            height: 26,
          ),
          SizedBox(
            height: 30,
            width: Get.width,
            child: Row(
              children: [
                const Text(
                  'Product Detail',
                  style: TextStyle(fontSize: 14),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      productController.toggleContainerVisibility();
                    },
                    icon: const Icon(Icons.arrow_drop_down_rounded))
              ],
            ),
          ),
          Obx(() {
            return Visibility(
                visible: productController.isContainerVisible.value,
                child: Container(
                  height: Get.height * .1,
                  width: Get.width,
                  color: Colors.grey,
                ));
          }),
          const Divider(
            height: 26,
          ),
          SizedBox(
            height: 30,
            width: Get.width,
            child: Row(
              children: [
                const Text(
                  'Nutritions',
                  style: TextStyle(fontSize: 14),
                ),
                Container(
                  height: 20,
                  width: Get.width * .47,
                ),
                const Spacer(),
                Container(
                  height: 24,
                  width: Get.width * .2,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8)),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down_rounded))
              ],
            ),
          ),
          const Divider(
            height: 26,
          ),
          SizedBox(
            height: 30,
            width: Get.width,
            child: Row(
              children: [
                const Text(
                  'Review',
                  style: TextStyle(fontSize: 14),
                ),
                Container(
                  height: 20,
                  width: Get.width * .39,
                ),
                const Spacer(),
                Container(
                  height: 28,
                  width: Get.width * .34,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        color: Colors.orange,
                      );
                    }),
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down_rounded))
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            alignment: Alignment.center,
            height: Get.height * .08,
            width: Get.width * .9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: const Color.fromRGBO(83, 177, 117, 1)),
            child: const Text(
              'Add To Basket',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
