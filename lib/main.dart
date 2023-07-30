import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager/views/screens/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Landing_Screen(),
    );
  }
}
