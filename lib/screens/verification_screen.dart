import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/controllers/verificationController.dart';
import 'package:groceries/screens/location_screen.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final verificationController = Get.put(VerificationController());
  final _formKey = GlobalKey<FormState>();
  // OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  height: 24,
                ),
                SizedBox(
                  height: 32,
                  width: Get.width,
                  child: const Text(
                    'Enter your 4-digit code',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  height: 29,
                  width: Get.width,
                  child: const Text(
                    'Code',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter OTP";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  controller: verificationController.pinEditingController,
                  decoration: const InputDecoration(hintText: '-  -  -  -'),
                  // length: 4,
                  // width: Get.width,
                  // textFieldAlignment: MainAxisAlignment.start,
                  // fieldWidth: 45,
                  // fieldStyle: FieldStyle.box,
                  // outlineBorderRadius: 15,
                  // style: const TextStyle(fontSize: 17),
                  // onChanged: (pin) {
                  //   print("Changed: " + pin);
                  // },
                  // onCompleted: (pin) {
                  //   print("Completed: " + pin);
                  // }
                ),
                const SizedBox(
                  height: 19,
                ),
                Container(
                  height: 29,
                  width: Get.width * .9,
                  child: const Text(
                    'Resend Code',
                    style: TextStyle(
                        fontSize: 17, color: Color.fromRGBO(83, 177, 117, 1)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          height: 67,
          width: 67,
          child: FloatingActionButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                Get.to(const LocationScreen());
                print(
                    'Email is valid: ${verificationController.pinEditingController.text}');
              }
            },
            backgroundColor: const Color.fromRGBO(83, 177, 117, 1),
            shape: const CircleBorder(),
            child: Image.asset('assets/images/Frame.png'),
          ),
        ),
      ),
    );
  }
}
