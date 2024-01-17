import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/controllers/loginController.dart';
import 'package:groceries/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginController = Get.put(LoginController());
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
              child: Column(
                children: [
                  Container(
                    height: 24,
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
                    height: 84,
                  ),
                  SizedBox(
                    height: 34,
                    width: Get.width,
                    child: const Text(
                      'Loging',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  SizedBox(
                    height: 21,
                    width: Get.width,
                    child: const Text(
                      'Enter your emails and password',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 54,
                  ),
                  SizedBox(
                    height: 21,
                    width: Get.width,
                    child: const Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextFormField(
                    controller: loginController.emailController,
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
                    height: 45,
                  ),
                  SizedBox(
                    height: 21,
                    width: Get.width,
                    child: const Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter password";
                      }
                      return null;
                    },
                    controller: loginController.passController,
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
                    alignment: Alignment.centerRight,
                    height: 21,
                    width: Get.width,
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        Get.to(() => const SignUpScreen());
                        print(
                            'Email is valid: ${loginController.emailController.text}');
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
                        'Log In',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 21,
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don’t have an account?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const SignUpScreen());
                          },
                          child: const Text(
                            ' Signup',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(83, 177, 117, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
