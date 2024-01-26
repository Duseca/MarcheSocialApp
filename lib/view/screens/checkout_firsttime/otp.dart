import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15),
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: Get.height * 0.2,
                ),
                MyText(
                  text: 'Enter Otp',
                  size: 16,
                  textAlign: TextAlign.center,
                  weight: FontWeight.w600,
                  paddingBottom: 10,
                ),
                MyText(
                  text: 'Enter the OTP we have sent to +92314***********',
                  textAlign: TextAlign.center,
                  color: kGrey5Color,
                  paddingBottom: 20,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(child: SizedBox(child: MyTextField())),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(child: MyTextField()),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(child: MyTextField()),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(child: MyTextField()),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(child: MyTextField()),
                    Expanded(child: Container()),
                  ],
                ),
                Center(
                  child: RichText(
                      text: TextSpan(children: [
                    const TextSpan(
                        text: "Did'nt recieve the code?",
                        style: TextStyle(
                            fontFamily: AppFonts.OUTFit_DISPLAY,
                            color: KTertiaryColor)),
                    TextSpan(
                      text: ' Send Again ',
                      style: TextStyle(
                          fontFamily: AppFonts.OUTFit_DISPLAY,
                          color: KSecondaryColor,
                          fontWeight: FontWeight.bold),
                      // recognizer: TapGestureRecognizer()
                      //   ..onTap = () => Get.to(() => const SendOTPAgain()
                      //   )
                    )
                  ])),
                ),
              ],
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              onTap: () {},
              buttonText: 'Continue',
              radius: 50,
            ),
          )
        ],
      ),
    );
  }
}
