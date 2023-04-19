import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:american_dream_messenger/app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:get/get.dart';
// import 'package:pinput/pin_put/pin_put.dart';
import '../controllers/opt_controller.dart';

class OptView extends GetView<OptController> {
  const OptView({Key? key}) : super(key: key);
//     Widget buildPinPut() {
//   return Pinput(
//     onCompleted: (pin) => print(pin),
//   );
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(
            text: "OTP verification",
            textt:
                "Please enter your correct OTP for number verification process.",
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 55),
            child: Pinput(
              length: 4,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              defaultPinTheme: PinTheme(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.blueB8,
                      width: 1.0,
                    ),
                    shape: BoxShape.circle,
                    color: AppColors.white,
                    // borderRadius: BorderRadius.circular(100),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
