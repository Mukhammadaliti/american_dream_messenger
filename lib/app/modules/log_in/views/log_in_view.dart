import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:american_dream_messenger/app/modules/sing_in/views/sing_in_view.dart';
import 'package:american_dream_messenger/app/modules/welcom/views/welcom_view.dart';
import 'package:american_dream_messenger/app/modules/welcom/widgets/register_widget.dart';
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
          Container(
            width: MediaQuery.of(context).size.width * 1.1,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              color: AppColors.blueB8,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.to(WelcomView());
                        },
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          size: 40,
                          color: AppColors.white,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 30,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      """Enter your 10 - digit mobile number to                                                                   continue""",
                      style: TextStyle(
                        // letterSpacing: 3,
                        fontSize: 15,
                        color: AppColors.white,
                      ),
                    )
                  ]),
            ),
          ),
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
                labelText: "Phone",
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
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.blueB8,
              ),
              width: MediaQuery.of(context).size.width * 0.93,
              height: MediaQuery.of(context).size.height * 0.073,
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white),
                ),
              ),
            ),
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
