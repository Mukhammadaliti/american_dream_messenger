import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:flutter/material.dart';

class SingInTextFormFiled extends StatelessWidget {
  SingInTextFormFiled(
      {super.key, required this.onChange, this.text, this.world});
  final String? text;
  final String? world;
  void Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      style: TextStyle(decorationColor: AppColors.red),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.transparent,
        focusColor: AppColors.blueB8,
        labelText: text,
        hintText: world,
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
    );
  }
}
