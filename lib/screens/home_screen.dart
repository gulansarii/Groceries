import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Image.asset('assets/images/Group5.png'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 21,
              ),
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
              SizedBox(
                height: 16,
              ),
              Container(
                height: 114,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.grey),
              ),
              Row(
                children: [
                  Container(
                    height: 29,
                    width: 173,
                    color: Colors.amber,
                    child: Text(
                      'Exclusive Offer',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    height: 29,
                    width: 173,
                    color: Colors.green,
                    child: Text(
                      'Exclusive Offer',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
