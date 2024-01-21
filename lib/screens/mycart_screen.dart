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
                          height: Get.height * .19,
                          width: Get.width,
                          child: Row(
                            children: [
                              Container(
                                height: Get.height * .12,
                                width: Get.width * .22,
                                color: Colors.grey.shade400,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: Column(
                                  children: [
                                    Container(
                                      height: Get.height * .03,
                                      width: Get.width * .42,
                                      child: const Text(
                                        'Bell Pepper Red',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    Container(
                                      height: Get.height * .03,
                                      width: Get.width * .42,
                                      child: const Text(
                                        '1kg, Price',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      height: Get.height * .07,
                                      width: Get.width * .42,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: Get.height * .06,
                                            width: Get.width * .12,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey
                                                        .shade300, // Set border color
                                                    width: 2.0),
                                                borderRadius:
                                                    BorderRadius.circular(18)),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons.remove)),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: Get.height * .07,
                                            width: Get.width * .12,
                                            child: const Text('1'),
                                          ),
                                          Container(
                                            height: Get.height * .06,
                                            width: Get.width * .12,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey
                                                        .shade300, // Set border color
                                                    width: 2.0),
                                                borderRadius:
                                                    BorderRadius.circular(18)),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.add,
                                                  color: Color.fromRGBO(
                                                      83, 177, 117, 1),
                                                )),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 9),
                                child: Column(
                                  children: [
                                    Container(
                                        alignment: Alignment.bottomRight,
                                        height: Get.height * .04,
                                        width: Get.width * .16,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.close))),
                                    SizedBox(
                                      height: Get.height * .05,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: Get.height * .04,
                                      width: Get.width * .19,
                                      child: const Text(
                                        '@.9999',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
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
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 45,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        settingModalBottomSheet(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Go to Checkout',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: Get.width * .15,
                    child: const Text('@.9999'),
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

void settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: Get.height * .9,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: Get.height * .06,
                  width: Get.width,
                  child: const Text(
                    'Checkout',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                const Divider(),
                Container(
                  height: Get.height * .05,
                  width: Get.width,
                  child: Row(
                    children: [
                      const Text(
                        'Delivery',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      const Spacer(),
                      const Text(
                        'Select Method',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          iconSize: 18,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  ),
                ),
                const Divider(),
                Container(
                  height: Get.height * .05,
                  width: Get.width,
                  child: Row(
                    children: [
                      const Text(
                        'Pament',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      const Spacer(),
                      Container(
                        height: 18,
                        width: 26,
                        color: Colors.grey,
                      ),
                      IconButton(
                          iconSize: 18,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  ),
                ),
                const Divider(),
                Container(
                  height: Get.height * .05,
                  width: Get.width,
                  child: Row(
                    children: [
                      const Text(
                        'Promo Code',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      const Spacer(),
                      const Text(
                        'Pick discount',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          iconSize: 18,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  ),
                ),
                const Divider(),
                Container(
                  height: Get.height * .05,
                  width: Get.width,
                  child: Row(
                    children: [
                      const Text(
                        'Total Cost',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      const Spacer(),
                      const Text(
                        '13.97',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          iconSize: 18,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  ),
                ),
                const Divider(),
                Container(
                  height: Get.height * .05,
                  width: Get.width,
                  child: const Text(
                    'By placing an order you agree to our                  Terms And Conditions',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: Get.width * .9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: const Color.fromRGBO(83, 177, 117, 1)),
                  child: const Text(
                    'Place Order',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
