import 'dart:developer';

import 'package:american_dream_messenger/app/modules/home/views/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {
  RxString email = ''.obs;
  RxString password = ''.obs;

  Future<void> signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      Get.to(HomeView());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      }
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
