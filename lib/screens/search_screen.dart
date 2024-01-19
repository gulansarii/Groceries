import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/controllers/searchController.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchItemController = Get.put(SearchItemController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  Container(
                    height: 55,
                    width: Get.width,
                    child: Row(
                      children: [
                        Container(
                          height: 55,
                          width: Get.width * .78,
                          child: TextField(
                            controller: searchItemController.nameController,
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
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: Get.width * .1,
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.settings)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: Get.height,
                    width: Get.width,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 230,
                        crossAxisSpacing:
                            1, // Horizontal spacing between grid items
                        mainAxisSpacing:
                            12, // Vertical spacing between grid items
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
                                          color: const Color.fromRGBO(
                                              83, 177, 117, 1),
                                          borderRadius:
                                              BorderRadius.circular(17)),
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
                ],
              )),
        ),
      ),
    );
  }
}
