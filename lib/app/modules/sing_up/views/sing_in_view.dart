import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:american_dream_messenger/app/modules/home/views/home_view.dart';
import 'package:american_dream_messenger/app/modules/log_in/views/log_in_view.dart';
import 'package:american_dream_messenger/app/widgets/app_bar_widget.dart';
import 'package:american_dream_messenger/app/widgets/register_widget.dart';
import 'package:american_dream_messenger/app/widgets/sing_in_text_form_filed.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sing_in_controller.dart';

class SingUpView extends GetView<SingInController> {
  const SingUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AppBarWidget(
              text: "Register",
              textt: "Fill up your details to register.",
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SingInTextFormFiled(
                    onChange: (p0) {},
                    world: "Enter your name",
                    text: "Name",
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  SingInTextFormFiled(
                    onChange: (p0) {},
                    world: "Enter your email address",
                    text: "Email",
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  SingInTextFormFiled(
                    onChange: (p0) {},
                    world: "Enter your password",
                    text: "Password",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SingInTextFormFiled(
                    onChange: (p0) {},
                    world: "Enter your кepeat password",
                    text: "Repeat password",
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  RegisterWidget(
                    onpress: () {
                      Get.to(
                        HomeView(),
                      );
                    },
                    text: "Register",
                  ),
                  Row(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
