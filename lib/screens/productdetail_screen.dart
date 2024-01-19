import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
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
          ),
          Container(
            height: Get.height * .03,
            width: Get.width,
            color: Colors.grey,
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
                  width: Get.width * .45,
                  color: Colors.grey,
                ),
                const Spacer(),
                Container(
                  height: Get.height * .07,
                  width: Get.width * .3,
                  color: Colors.grey,
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
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down_rounded))
              ],
            ),
          ),
          Container(
            height: Get.height * .1,
            width: Get.width,
            color: Colors.grey,
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
                  'Nutritions',
                  style: TextStyle(fontSize: 14),
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
