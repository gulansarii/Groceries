import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:groceries/controllers/signinController.dart';

import 'package:groceries/screens/verification_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final signinController = Get.put(SigninController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: Column(
          children: [
            Container(
              height: Get.height * .5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/signin.jpg'))),
            ),
            SizedBox(
              height: 74,
              width: Get.width * .89,
              // color: Colors.amber,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get your groceries',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'with nectar',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: 12,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "can't Empty".tr;
                  }
                  return null;
                },
                controller: signinController.phoneController,
                decoration: InputDecoration(
                    prefix: Row(
                  children: [
                    Container(
                      height: 27,
                      width: 34,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Container(
                      height: 27,
                      width: 42,
                      color: Colors.grey,
                    )
                  ],
                )),
                // maxLength: 10,
                // keyboardType: TextInputType.number,
                // style: const TextStyle(fontSize: 15),
                // decoration: InputDecoration(
                //   hintText: 'Enter Number'.tr,
                //   contentPadding: const EdgeInsets.all(18),
                //   filled: true,
                //   border: InputBorder.none,
                //   enabledBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.grey.shade200,
                //       ),
                //       gapPadding: 0,
                //       borderRadius: BorderRadius.circular(20)),
                //   focusedBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.grey.shade200,
                //       ),
                //       gapPadding: 0,
                //       borderRadius: BorderRadius.circular(20)),
                //   fillColor: Colors.grey.shade200,
                // ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const VerificationScreen());
              },
              child: Container(
                alignment: Alignment.center,
                height: 17,
                width: Get.width,
                child: const Text(
                  'Or connect with social media',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.center,
                height: 60,
                width: Get.width * .9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: const Color.fromRGBO(83, 131, 236, 1)),
                child: Row(
                  children: [
                    Container(
                      width: 33,
                    ),
                    Container(
                      height: 24,
                      width: 22.95,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/group3.png'))),
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    Container(
                      height: 22,
                      width: 183,
                      child: const Text(
                        'Continue with Google',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 17,
            ),
            Container(
                alignment: Alignment.center,
                height: 60,
                width: Get.width * .9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: const Color.fromRGBO(74, 102, 172, 1)),
                child: Row(
                  children: [
                    Container(
                      width: 33,
                    ),
                    Container(
                      height: 24.6,
                      width: 11.95,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/group4.png'))),
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    Container(
                      height: 20,
                      width: Get.width * .6,
                      child: const Text(
                        'Continue with Facebook',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
