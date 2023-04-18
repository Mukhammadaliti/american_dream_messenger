import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:american_dream_messenger/app/modules/welcom/views/welcom_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    this.text,
    this.textt,
  });
  final String? text;
  final String? textt;
  // final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.1,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
        color: AppColors.blueB8,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            text!,
            style: TextStyle(
                fontSize: 30,
                color: AppColors.white,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            textt!,
            style: TextStyle(
              // letterSpacing: 3,
              fontSize: 15,
              color: AppColors.white,
            ),
          )
        ]),
      ),
    );
  }
}
