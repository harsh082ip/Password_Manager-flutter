import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager/views/screens/auth/signup_screen.dart';

import '../../../controller/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/abstract.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/login.png',
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontFamily: 'Exo2',
                        letterSpacing: 2),
                  ),
                  const SizedBox(
                    height: 75.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      controller: emailEditingController,
                      style: const TextStyle(color: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'abc@example.com',
                        hintStyle: const TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.white, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.white, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      controller: passwordEditingController,
                      style: const TextStyle(color: Colors.white),
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: 'abc123',
                        hintStyle: const TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.white, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.white, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.password_outlined,
                          color: Colors.white,
                        ),
                        labelText: 'password',
                        labelStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 110,
                  ),
                  Container(
                    height: 48.0,
                    margin: const EdgeInsets.symmetric(horizontal: 30.0),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 135, 5, 5),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(6.0))),
                      onPressed: () {
                        Auth.instance.login(emailEditingController.text,
                            passwordEditingController.text);
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'don\'t have an account?',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.off(SignUp_Screen());
                        },
                        child: const Text(
                          'Create Here',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
