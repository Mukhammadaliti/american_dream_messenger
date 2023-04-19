import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/opt_controller.dart';

class OptView extends GetView<OptController> {
  const OptView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OptView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OptView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
