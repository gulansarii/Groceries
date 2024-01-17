import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/controllers/homeController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeScreenController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * .12,
        title: Center(
            child: Column(
          children: [
            Container(
              height: 52,
              width: 52,
              child: Image.asset('assets/images/Group5.png'),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  height: 26,
                  width: Get.width * .30,
                  child: const Icon(Icons.location_on),
                ),
                const SizedBox(
                  width: 4,
                  // child: Image.asset('assets/images/Exclude.png'),
                ),
                const Expanded(
                  child: SizedBox(
                    height: 26,
                    child: Text(
                      'Data Location ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
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
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 114,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.grey),
              ),
              const SizedBox(
                height: 18,
              ),
              const Row(
                children: [
                  SizedBox(
                    height: 29,
                    width: 173,
                    child: Text(
                      'Exclusive Offer',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 20,
                    width: 50,
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(83, 177, 117, 1)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 19,
              ),
              SizedBox(
                height: Get.height * .27,
                width: Get.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: 50, // Adjust the item count as needed
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 7),
                      height: Get.height * .26,
                      width: Get.width * .41,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(18)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        child: Column(
                          children: [
                            Container(
                              height: Get.height * .11,
                              width: Get.width * .3,
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
                              height: 8,
                            ),
                            Container(
                              height: 18,
                              width: Get.width,
                              color: Colors.grey.shade300,
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  width: Get.width * .15,
                                  color: Colors.grey.shade300,
                                ),
                                const Spacer(),
                                Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(83, 177, 117, 1),
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
              const SizedBox(
                height: 19,
              ),
              const Row(
                children: [
                  SizedBox(
                    height: 29,
                    width: 173,
                    child: Text(
                      'Best Selling',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 20,
                    width: 50,
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(83, 177, 117, 1)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 19,
              ),
              SizedBox(
                height: Get.height * .27,
                width: Get.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: 50, // Adjust the item count as needed
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 7),
                      height: Get.height * .26,
                      width: Get.width * .41,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(18)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        child: Column(
                          children: [
                            Container(
                              height: Get.height * .11,
                              width: Get.width * .3,
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
                              height: 8,
                            ),
                            Container(
                              height: 18,
                              width: Get.width,
                              color: Colors.grey.shade300,
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  width: Get.width * .15,
                                  color: Colors.grey.shade300,
                                ),
                                const Spacer(),
                                Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(83, 177, 117, 1),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.amber,
          currentIndex: homeScreenController.currentIndex.value,
          onTap: (index) {
            homeScreenController.changeTabIndex(index);
          },
          selectedItemColor: const Color.fromRGBO(83, 177, 117, 1),
          unselectedItemColor: Colors.black.withOpacity(.8),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.store_outlined),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}

 




// Row(
//                 children: [
//                   Container(
//                     alignment: Alignment.centerRight,
//                     height: 26,
//                     width: Get.width * .30,
//                     child: const Icon(Icons.location_on),
//                   ),
//                   const SizedBox(
//                     width: 4,
//                     // child: Image.asset('assets/images/Exclude.png'),
//                   ),
//                   const Expanded(
//                     child: SizedBox(
//                       height: 26,
//                       child: Text(
//                         'Data Location ',
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.w600),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),