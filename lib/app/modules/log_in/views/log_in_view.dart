import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/log_in_controller.dart';

class LogInView extends GetView<LogInController> {
  const LogInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1.1,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            color: AppColors.blueB8,
          ),
          child: Column(children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: 40,
                  color: AppColors.white,
                )),
            Text(
              "Login",
              style: TextStyle(
                  fontSize: 30,
                  color: AppColors.white,
                  fontWeight: FontWeight.w600),
            ),
          ]),
        )
      ],
    ));
  }
}
