import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sing_in_controller.dart';

class SingInView extends GetView<SingInController> {
  const SingInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingInView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SingInView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
