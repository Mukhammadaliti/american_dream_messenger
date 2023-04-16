import 'dart:developer';

import 'package:american_dream_messenger/app/components/app_colors.dart';
import 'package:american_dream_messenger/app/components/app_text_styles.dart';
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
      appBar: AppBar(
        title: const Text('WelcomView'),
        centerTitle: true,
      ),
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
            color: AppColors.blue,
            text: "Log In",
            onpress: () {},
          ),
          SizedBox(
            height: 30,
          ),
          RegisterWiget(
            color: AppColors.green,
            text: "Sing In",
            onpress: () {},
          ),
        ],
      )),
    );
  }
}
