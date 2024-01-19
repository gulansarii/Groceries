import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
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
                          height: Get.height * .17,
                          width: Get.width,
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
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 45,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Go to Checkout',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 45,
                    color: Colors.grey.shade300,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
