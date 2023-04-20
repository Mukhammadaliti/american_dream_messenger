import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:american_dream_messenger/app/modules/home/views/home_view.dart';
import 'package:american_dream_messenger/app/modules/log_in/views/log_in_view.dart';
import 'package:american_dream_messenger/app/widgets/app_bar_widget.dart';
import 'package:american_dream_messenger/app/widgets/register_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sing_in_controller.dart';

class SingUpView extends GetView<SingInController> {
  const SingUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(
            text: "Register",
            textt: "Fill up your details to register.",
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your name",
                label: Text("Name"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    color: AppColors.blueB8,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your email",
                label: Text("Email"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    color: AppColors.blueB8,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter mobile number",
                label: Text("Mobile"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    color: AppColors.blueB8,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 130,
          ),
          RegisterWidget(
            onpress: () {
              Get.to(
                HomeView(),
              );
            },
            text: "Registe",
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Already have an account"),
          TextButton(
            onPressed: () {
              Get.to(
                LogInView(),
              );
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
