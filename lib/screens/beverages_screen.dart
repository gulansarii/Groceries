import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BeveragesScreen extends StatefulWidget {
  const BeveragesScreen({super.key});

  @override
  State<BeveragesScreen> createState() => _BeveragesScreenState();
}

class _BeveragesScreenState extends State<BeveragesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Beverages',
          style: TextStyle(fontSize: 20),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 230,
            crossAxisSpacing: 4, // Horizontal spacing between grid items
            mainAxisSpacing: 17, // Vertical spacing between grid items
          ),
          itemCount: 60,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              height: Get.height * .26,
              width: Get.width * .41,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300, // Set border color
                    width: 2.0, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Column(
                  children: [
                    Container(
                      height: Get.height * .13,
                      width: Get.width * .3,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 22,
                      width: Get.width,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 18,
                      width: Get.width,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 28,
                          width: Get.width * .2,
                          color: Colors.grey.shade300,
                        ),
                        const Spacer(),
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(83, 177, 117, 1),
                              borderRadius: BorderRadius.circular(17)),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
