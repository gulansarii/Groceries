import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/controllers/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(83, 177, 117, 1),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Row(
          children: [
            Container(
                alignment: Alignment.center,
                height: 63.61,
                width: 54.42,
                // color: Colors.amber,
                child: Image.asset('assets/images/Group.png')),
            const SizedBox(
              width: 13,
            ),
            Column(
              children: [
                Container(
                  height: Get.height * .47,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 66.99,
                  width: 194.35,
                  child: Column(
                    children: [
                      Container(
                        height: 47,
                        width: 194,
                        child: Image.asset('assets/images/Group2.png'),
                      ),
                      Container(
                          height: 18,
                          width: Get.width * .5,
                          child: const Text(
                            'online groceriet',
                            style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 5.5,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
