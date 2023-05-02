import 'dart:developer';

import 'package:american_dream_messenger/app/modules/home/views/home_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class SingInController extends GetxController {
  RxString name = ''.obs;
  RxString email = ''.obs;
  RxString password = ''.obs;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser() {
    return users
        .add({
          'name': name.value,
          'email': email.value,
          'password': password.value,
        })
        .then((value) => log("User Added"))
        .catchError((error) => log("Failed to add user: $error"));
  }

  Future<void> signUp() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: email.value,
            password: password.value,
          )
          .then((value) => {
                addUser(),
                Get.to(HomeView()),
              });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log('$e');
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
