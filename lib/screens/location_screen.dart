import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/screens/login_screen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String selectedValue = 'Option 1';
  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 170,
              width: 224,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/illustration.png'))),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            alignment: Alignment.center,
            height: 29,
            width: 245,
            child: const Text(
              'Select Your Location',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Container(
            alignment: Alignment.center,
            height: 27,
            width: Get.width * .9,
            child: const Text(
              '  Switch on your location to stay in tune with',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 27,
            width: Get.width * .9,
            child: const Text(
              'what’s happening in your area',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          Container(
            height: 25,
            width: Get.width * .9,
            child: const Text(
              'Your Zone',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: Get.width * .9,
            child: DropdownButton(
              value: selectedValue,
              onChanged: (newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
              items: dropdownItems.map((item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child:
                      Text(item, style: TextStyle(fontWeight: FontWeight.w400)),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 29,
          ),
          Container(
            height: 25,
            width: Get.width * .9,
            child: const Text(
              'Your Area',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: Get.width * .9,
            child: DropdownButton(
              value: selectedValue,
              onChanged: (newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
              items: dropdownItems.map((item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          GestureDetector(
            onTap: () {
              Get.off(() => LoginScreen());
            },
            child: Container(
              alignment: Alignment.center,
              height: 66,
              width: Get.width * .9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Color.fromRGBO(83, 177, 117, 1)),
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
