// import 'package:american_dream_messenger/app/constans/app_colors.dart';
// import 'package:american_dream_messenger/app/modules/home/views/home_view.dart';
// import 'package:american_dream_messenger/app/modules/log_in/views/log_in_view.dart';
import 'package:american_dream_messenger/app/constans/app_text_styles.dart';
import 'package:american_dream_messenger/app/modules/log_in/views/log_in_view.dart';
import 'package:american_dream_messenger/app/modules/sing_up/widgets/input_decoration.dart';
import 'package:american_dream_messenger/app/widgets/app_bar_widget.dart';
import 'package:american_dream_messenger/app/widgets/register_widget.dart';
// import 'package:american_dream_messenger/app/widgets/sing_in_text_form_filed.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sing_in_controller.dart';

class SingUpView extends GetView<SingInController> {
  SingUpView({Key? key}) : super(key: key);
  final _signInController = Get.put(SingInController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          reverse: true,
          child: Column(
            children: [
              AppBarWidget(
                text: "Sign Up",
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  onChanged: (value) {
                    _signInController.name.value = value;
                  },
                  decoration: inputDecoration.copyWith(
                    label: Text("Name"),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                    onChanged: (value) {
                      _signInController.email.value = value;
                    },
                    decoration: inputDecoration.copyWith(
                      label: Text("Email"),
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                    onChanged: (value) {
                      _signInController.password.value = value;
                    },
                    decoration: inputDecoration.copyWith(
                      label: Text("Password"),
                    )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                    onChanged: (value) {
                      _signInController.password.value = value;
                    },
                    decoration: inputDecoration.copyWith(
                      label: Text("Confirm password"),
                    )),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              RegisterWidget(
                onpress: () {
                  _signInController.signUp();
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                text: "Sign Up",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account",
                    style: AppTextStyle.black20w700,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(
                        LogInView(),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: AppTextStyle.blue16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
