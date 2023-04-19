import 'package:american_dream_messenger/app/constans/app_colors.dart';
import 'package:american_dream_messenger/app/constans/app_text_styles.dart';
import 'package:american_dream_messenger/app/modules/home/views/home_view.dart';
import 'package:american_dream_messenger/app/widgets/app_bar_widget.dart';
import 'package:american_dream_messenger/app/widgets/register_widget.dart';
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
          const AppBarWidget(
            text: "OTP verification",
            textt:
                "Please enter your correct OTP for number verification process.",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 55),
            child: Pinput(
              length: 4,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              defaultPinTheme: PinTheme(
                  textStyle: AppTextStyle.black20,
                  height: 70.0,
                  width: 70.0,
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
          ),
          RegisterWidget(
            onpress: () {
              Get.to(
                const HomeView(),
              );
            },
            text: "Verify",
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Resend OTP",
            ),
          ),
        ],
      ),
    );
  }
}
