import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:american_dream_messenger/app/modules/opt/views/opt_view.dart';
import 'package:american_dream_messenger/app/modules/sing_in/views/sing_in_view.dart';
import 'package:american_dream_messenger/app/modules/welcom/views/welcom_view.dart';
import 'package:american_dream_messenger/app/modules/welcom/widgets/register_widget.dart';
import 'package:american_dream_messenger/app/widgets/app_bar_widget.dart';
import 'package:american_dream_messenger/app/widgets/register_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/log_in_controller.dart';

class LogInView extends GetView<LogInController> {
  const LogInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppBarWidget(text: "Login", textt: """Enter your 10 - digit mobile to 
continue."""),
          SizedBox(
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              style: TextStyle(decorationColor: AppColors.red),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.transparent,
                focusColor: AppColors.blueB8,
                // labelText: "Phone",

                hintText: "Enter your number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(color: AppColors.blue, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(color: AppColors.blueB8, width: 1.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RegisterWidget(
            onpress: () {
              Get.to(
                OptView(),
              );
            },
            text: "Login",
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Dont have an account"),
          TextButton(
              onPressed: () {
                Get.to(SingInView());
              },
              child: Text("Register"))
        ],
      ),
    );
  }
}
