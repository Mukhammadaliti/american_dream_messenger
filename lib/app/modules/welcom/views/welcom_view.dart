import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcom_controller.dart';

class WelcomView extends GetView<WelcomController> {
  const WelcomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WelcomView'),
        centerTitle: true,
      ),
      body: Center(
          child: Row(
        children: [],
      )),
    );
  }
}
