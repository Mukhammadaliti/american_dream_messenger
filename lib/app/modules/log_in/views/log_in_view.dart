import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:american_dream_messenger/app/constans/app_text_styles.dart';
import 'package:american_dream_messenger/app/modules/home/views/home_view.dart';
import 'package:american_dream_messenger/app/modules/log_in/controllers/log_in_controller.dart';
import 'package:american_dream_messenger/app/widgets/sing_in_text_form_filed.dart';
import 'package:american_dream_messenger/app/modules/sing_up/views/sing_in_view.dart';
import 'package:american_dream_messenger/app/widgets/app_bar_widget.dart';
import 'package:american_dream_messenger/app/widgets/register_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LogInView extends GetView<LogInController> {
  LogInView({Key? key}) : super(key: key);
  final _logInController = Get.put(LogInController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          reverse: true,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppBarWidget(
                text: "Sign In",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      onChanged: (value) {
                        _logInController.email.value = value;
                      },
                      // controller: _signinController.controllerEmail.value,
                      style: TextStyle(decorationColor: AppColors.red),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.transparent,
                        focusColor: AppColors.blueB8,
                        // labelText: "Phone",
                        hintText: "Enter email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(color: AppColors.blue, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(color: AppColors.blueB8, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  onChanged: (value) {
                    _logInController.password.value = value;
                  },
                  // controller: _signinController.controllerPassword.value,
                  style: TextStyle(decorationColor: AppColors.red),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.transparent,
                    focusColor: AppColors.blueB8,
                    // labelText: "Phone",
                    hintText: "Enter password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: AppColors.blue, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide:
                          BorderSide(color: AppColors.blueB8, width: 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RegisterWidget(
                onpress: () {
                  // if(_signinController.email.value.isNotEmpty && _signinController.password.value.isNotEmpty){
                  // }
                  _logInController.signIn();
                },
                text: "Sign In",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account",
                    style: AppTextStyle.black20w700,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(SingUpView());
                      },
                      child: Text(
                        "Sign Up",
                        style: AppTextStyle.blue16,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
