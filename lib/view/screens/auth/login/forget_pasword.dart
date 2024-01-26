import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/screens/auth/login/forgetpass_otp.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context: context, title: '', bgColor: kPrimaryColor),
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
                  text: 'Forgot password?',
                  size: 18,
                  paddingTop: 16,
                  weight: FontWeight.bold,
                  paddingBottom: 22,
                ),
                MyText(
                  color: kGrayColor,
                  text:
                      'Don’t worry! It happens. Please enter the email associated with your account.',
                  size: 12,
                  paddingBottom: 30,
                ),
                MyText(
                  text: 'Email address',
                  size: 14,
                  weight: FontWeight.w300,
                  paddingBottom: 10,
                  color: KTertiaryColor,
                ),
                MyTextField(
                  hint: 'Your email',
                  marginBottom: 50,
                ),
                MyButton(
                  onTap: () {
                    Get.to(() => ForgetpassOTP());
                  },
                  buttonText: 'Send Code',
                  radius: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
