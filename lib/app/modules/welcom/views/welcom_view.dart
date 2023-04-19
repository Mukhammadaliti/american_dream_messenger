import 'dart:developer';

import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:american_dream_messenger/app/constans/app_text_styles.dart';
import 'package:american_dream_messenger/app/modules/log_in/views/log_in_view.dart';
import 'package:american_dream_messenger/app/modules/sing_in/views/sing_in_view.dart';
import 'package:american_dream_messenger/app/modules/welcom/widgets/register_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../controllers/welcom_controller.dart';

class WelcomView extends GetView<WelcomController> {
  const WelcomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "vectors/output.png",
                width: 100,
              ),
              DefaultTextStyle(
                style: AppTextStyle.s20,
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('American Dream Messenger',
                        textStyle: AppTextStyle.black30w700),
                  ],
                  pause: Duration(milliseconds: 1),
                  isRepeatingAnimation: true,
                  onTap: () {
                    log("message");
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          RegisterWiget(
            color: AppColors.lightBlueAccent,
            text: "Log In",
            onpress: () {
              Get.to(LogInView());
            },
          ),
          SizedBox(
            height: 30,
          ),
          RegisterWiget(
            color: AppColors.blueAccent,
            text: "Sing In",
            onpress: () {
              Get.to(SingInView());
            },
          ),
        ],
      )),
    );
  }
}
