import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/auth/signup/language_option.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        context: context,
        title: '',
        bgColor: kPrimaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                MyText(
                  text: 'Enter Code',
                  size: 18,
                  paddingTop: 16,
                  weight: FontWeight.bold,
                  paddingBottom: 22,
                ),
                Center(
                  child: MyText(
                    color: kGrayColor,
                    text:
                        'We’ve sent an SMS with an activation code to your phone +33 2 94 27 84 11',
                    size: 12,
                    paddingBottom: 30,
                  ),
                ),
                Padding(
                  padding: AppSizes.DEFAULT,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: MyTextField(
                              filledColor: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: MyTextField(
                              filledColor: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: MyTextField(
                              filledColor: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: MyTextField(
                              filledColor: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: MyTextField(
                              filledColor: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Center(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Send Code Again',
                        style: TextStyle(
                            color: KSecondaryColor,
                            fontFamily: AppFonts.OUTFit_DISPLAY,
                            fontSize: 12)),
                    TextSpan(
                        text: '  00:25',
                        style: TextStyle(
                            color: KTertiaryColor,
                            fontFamily: AppFonts.OUTFit_DISPLAY,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => const LanguageScreen()))
                  ])),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
