import 'package:american_dream_messenger/app/modules/home/views/home_view.dart';
import 'package:american_dream_messenger/app/modules/log_in/controllers/log_in_controller.dart';
import 'package:american_dream_messenger/app/widgets/sing_in_text_form_filed.dart';
import 'package:american_dream_messenger/app/modules/sing_up/views/sing_in_view.dart';
import 'package:american_dream_messenger/app/widgets/app_bar_widget.dart';
import 'package:american_dream_messenger/app/widgets/register_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LogInView extends GetView<LogInController> {
  const LogInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarWidget(
                text: "Login", textt: """Enter your 10 - digit mobile to 
      continue."""),
            SizedBox(
              height: 180,
            ),
            SingInTextFormFiled(
              text: "Email",
              world: "Enter your email address",
              onChange: (p0) {},
            ),
            SingInTextFormFiled(
              text: "Password",
              world: "Enter your password",
              onChange: (p0) {},
            ),
            SizedBox(
              height: 10,
            ),
            RegisterWidget(
              onpress: () {
                Get.to(
                  HomeView(),
                );
              },
              text: "Login",
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Dont have an account"),
          TextButton(
              onPressed: () {
                Get.to(SingUpView());
              },
              child: Text("Register"))
        ],
      ),
    );
  }
}
