import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager/views/screens/landing_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'controller/firebase_auth.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _initializeFireBase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Landing_Screen(),
    );
  }
}

_initializeFireBase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    Get.put(Auth());
    print('firebase initialized');
  });
}
