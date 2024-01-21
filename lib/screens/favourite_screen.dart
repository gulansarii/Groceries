import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            SizedBox(
              height: Get.height * .67,
              width: Get.width,
              child: ListView.builder(
                itemCount: 70,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Container(
                          height: Get.height * .16,
                          width: Get.width,
                          child: Row(
                            children: [
                              Container(
                                height: Get.height * .11,
                                width: Get.width * .18,
                                color: Colors.grey.shade400,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: Get.height * .03,
                                      width: Get.width * .41,
                                      child: const Text(
                                        'Sprite Can',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    Container(
                                      height: Get.height * .03,
                                      width: Get.width * .41,
                                      child: const Text(
                                        '325ml, Price',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Container(
                                alignment: Alignment.center,
                                height: Get.height * .05,
                                width: Get.width * .27,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      '@.999',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    IconButton(
                                        alignment: Alignment.centerRight,
                                        iconSize: 18,
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.arrow_forward_ios_outlined))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 1, // Set the height of the divider
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 66,
              width: Get.width * .9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: const Color.fromRGBO(83, 177, 117, 1)),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Add All To Cart',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
