import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/auth/login/forget_pasword.dart';
import 'package:marche_social_app/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/custom_check_box.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            MyText(
              text: 'Hi, Welcome! 👋',
              size: 24,
              weight: FontWeight.w600,
              color: KTertiaryColor,
              paddingBottom: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: 'Email address',
                  size: 14,
                  weight: FontWeight.w300,
                  paddingBottom: 10,
                  color: KTertiaryColor,
                ),
                MyTextField(
                  hint: 'Your email',
                  marginBottom: 20,
                )
              ],
            ),
            MyText(
              text: 'Password',
              size: 14,
              weight: FontWeight.w300,
              paddingBottom: 10,
              color: KTertiaryColor,
            ),
            MyTextField(
              hint: 'Password',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: CommonImageView(
                  imagePath: Assets.imagesSye,
                  height: 10,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomCheckBox(isActive: true, onTap: () {}),
                    MyText(
                      paddingLeft: 10,
                      text: 'Remember me',
                      size: 14,
                      weight: FontWeight.w300,
                    ),
                  ],
                ),
                MyText(
                  text: 'Forgot password?',
                  onTap: () {
                    Get.to(() => ForgetPassword());
                  },
                  size: 14,
                  weight: FontWeight.w300,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              onTap: () {
                Get.to(() => BottomNavBar());
              },
              buttonText: 'login',
              backgroundColor: KSecondaryColor,
              fontColor: kWhiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              radius: 60,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                    text: 'Don’t have an account?',
                    color: Colors.black.withOpacity(0.7)),
                MyText(
                  text: 'Register',
                  onTap: () {},
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
