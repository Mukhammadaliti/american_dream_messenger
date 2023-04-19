import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:american_dream_messenger/app/constans/app_text_styles.dart';
import 'package:flutter/material.dart';

class RegisterWiget extends StatelessWidget {
  const RegisterWiget({
    super.key,
    required this.text,
    required this.onpress,
    required this.color,
  });
  final String text;
  final Function() onpress;
  final Color color;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onpress,
      child: Container(
        width: width * 0.8,
        height: height * 0.1,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: AppColors.grey30,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ], borderRadius: BorderRadius.circular(28), color: color),
        child: Center(
          child: Text(text, style: AppTextStyle.white28bold),
        ),
      ),
    );
  }
}
