import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/controllers/signupController.dart';
import 'package:groceries/screens/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final signUpController = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Form(
            key: _formKey,
            child: Column(children: [
              Container(
                height: 19,
              ),
              Center(
                child: Container(
                  height: 55,
                  width: 47,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Group5.png'))),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 34,
                width: Get.width,
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              SizedBox(
                height: 21,
                width: Get.width,
                child: const Text(
                  'Enter your credentials to continue',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 54,
              ),
              SizedBox(
                height: 21,
                width: Get.width,
                child: const Text(
                  'Username',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              TextFormField(
                controller: signUpController.nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter username";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 21,
                width: Get.width,
                child: const Text(
                  'Email',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              TextFormField(
                controller: signUpController.emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 21,
                width: Get.width,
                child: const Text(
                  'Password',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter password";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                alignment: Alignment.center,
                height: 38,
                width: Get.width,
                child: const Text(
                  'By continuing you agree to our Terms of Service        and Privacy Policy.',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: .7),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    Get.offAll(() => const HomeScreen());
                    print(
                        'Email is valid: ${signUpController.emailController.text}');
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 66,
                  width: Get.width * .9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: const Color.fromRGBO(83, 177, 117, 1)),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              Container(
                alignment: Alignment.center,
                height: 21,
                width: Get.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      ' Signup',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(83, 177, 117, 1)),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    ));
  }
}
