import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/screens/auth/login/changed.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                  text: 'Reset Password',
                  size: 18,
                  paddingTop: 16,
                  weight: FontWeight.bold,
                  paddingBottom: 22,
                ),
                MyText(
                  color: kGrayColor,
                  text: 'Please type something you’ll remember',
                  size: 12,
                  paddingBottom: 30,
                ),
                MyText(
                  text: 'New password',
                  size: 14,
                  weight: FontWeight.w300,
                  paddingBottom: 10,
                  color: KTertiaryColor,
                ),
                MyTextField(
                  hint: 'must be 8 characters',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CommonImageView(
                      imagePath: Assets.imagesSye,
                      height: 10,
                    ),
                  ),
                ),
                MyText(
                  text: 'Confirm new password',
                  size: 14,
                  weight: FontWeight.w300,
                  paddingBottom: 10,
                  color: KTertiaryColor,
                ),
                MyTextField(
                  hint: 'Confirm  password',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CommonImageView(
                      imagePath: Assets.imagesSye,
                      height: 10,
                    ),
                  ),
                ),
                MyButton(
                  onTap: () {
                    Get.to(() => Changed());
                  },
                  buttonText: 'Reset Password',
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
