import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:groceries/screens/signin_screen.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: Get.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/onboard.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              height: Get.height * .53,
            ),
            Container(
              height: 56.47,
              width: 48.36,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Group.png'))),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 253,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    'to our store',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Container(
              alignment: Alignment.center,
              height: 21,
              width: Get.width,
              child: const Text(
                'Ger your groceries in as fast as one hour',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {
                Get.off(() => const SigninScreen());
              },
              child: Container(
                alignment: Alignment.center,
                height: 66,
                width: Get.width * .9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Color.fromRGBO(
                      83,
                      177,
                      117,
                      1,
                    )),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
