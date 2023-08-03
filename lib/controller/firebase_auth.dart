import 'dart:developer';

import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:password_manager/models/users.dart';
import 'package:password_manager/views/screens/auth/login_screen.dart';
import 'package:password_manager/views/screens/home_screen.dart';

class Auth extends GetxController {
  static Auth instance = Get.find();

  void SignUp(String name, String email, String password) async {
    try {
      if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
        UserCredential credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        MyUser myUser =
            MyUser(email: email, name: name, uid: credential.user!.uid);

        await FirebaseFirestore.instance
            .collection('users')
            .doc(credential.user!.uid)
            .set(myUser.toJson())
            .then((value) {
          Get.off(LoginScreen());
          Get.snackbar(
              'SignUp Successful', 'You have been successfully signed up');
        });
      } else {
        Get.snackbar('Error', 'Enter all the details');
      }
    } catch (e) {
      log(e.toString());
      Get.snackbar('Error', e.toString());
    }
  }

  void login(String email, String password) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password)
            .then((value) {
          Get.off(HomeScreen());
          Get.snackbar('Congrats', 'Login Successful');
        });
      } else {
        Get.snackbar('Error', 'Enter all the details');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
