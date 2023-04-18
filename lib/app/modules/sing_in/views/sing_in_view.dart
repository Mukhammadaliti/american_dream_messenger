import 'package:american_dream_messenger/app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sing_in_controller.dart';

class SingInView extends GetView<SingInController> {
  const SingInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [AppBarWidget()],
    ));
  }
}
