import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/controllers/exploreController.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final exploreController = Get.put(ExploreController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find Products',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: exploreController.expController,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Store',
                  contentPadding: const EdgeInsets.all(18),
                  filled: true,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                      gapPadding: 0,
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                      gapPadding: 0,
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: Colors.grey.shade200,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: Get.height * .78,
                width: Get.width,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing:
                        12, // Horizontal spacing between grid items
                    mainAxisSpacing: 12, // Vertical spacing between grid items
                  ),
                  itemCount: 60,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 190,
                      width: 174,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300, // Set border color
                            width: 2.0, // Set border width
                          ),
                          borderRadius: BorderRadius.circular(18)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Column(
                          children: [
                            Container(
                              height: 76,
                              width: Get.width * .29,
                              color: Colors.grey.shade400,
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              height: Get.height * .05,
                              width: Get.width * .37,
                              color: Colors.grey.shade200,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
