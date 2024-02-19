import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/auth/login/login.dart';
import 'package:marche_social_app/view/screens/auth/login/login_with_phone.dart';
import 'package:marche_social_app/view/screens/auth/signup/register_with_phone-number.dart';
import 'package:marche_social_app/view/screens/auth/signup/signup.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class LoginOptions extends StatefulWidget {
  const LoginOptions({super.key});

  @override
  State<LoginOptions> createState() => _LoginOptionsState();
}

class _LoginOptionsState extends State<LoginOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: AppSizes.DEFAULT,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  MyText(
                    text: 'Explore the app',
                    fontFamily: AppFonts.OUTFit_DISPLAY,
                    size: 24,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MyText(
                    textAlign: TextAlign.center,
                    text: 'Now your Shopping and Social media at one\nplace',
                    fontFamily: AppFonts.OUTFit_DISPLAY,
                    size: 16,
                    color: kGrayColor,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  MyButton(
                    onTap: () {
                      Get.to(() => LoginwithPhone());
                    },
                    radius: 50,
                    fontColor: KTertiaryColor,
                    backgroundColor: kWhiteColor,
                    outlineColor: kGrey2Color,
                    buttonText: 'Continue with Phone Number',
                    mBottom: 10,
                    hasicon: true,
                    isleft: true,
                    choiceIcon: CommonImageView(
                      imagePath: Assets.imagesCall,
                      height: 20,
                    ),
                  ),
                  MyButton(
                    isleft: true,
                    onTap: () {},
                    radius: 50,
                    fontColor: KTertiaryColor,
                    backgroundColor: kWhiteColor,
                    outlineColor: kGrey2Color,
                    buttonText: 'Continue with Google',
                    hasicon: true,
                    mBottom: 10,
                    choiceIcon: CommonImageView(
                      imagePath: Assets.imagesGoogle,
                      height: 20,
                    ),
                  ),
                  MyButton(
                    onTap: () {
                      //  Get.to(() => SignUpScreen());
                    },
                    radius: 50,
                    isleft: true,
                    fontColor: KTertiaryColor,
                    backgroundColor: kWhiteColor,
                    outlineColor: kGrey2Color,
                    buttonText: 'Continue with Apple',
                    hasicon: true,
                    mBottom: 10,
                    choiceIcon: CommonImageView(
                      imagePath: Assets.imagesApple,
                      height: 20,
                    ),
                  ),
                  MyButton(
                    onTap: () {
                      Get.to(() => LoginScreen());
                    },
                    radius: 50,
                    isleft: true,
                    fontColor: KTertiaryColor,
                    backgroundColor: kWhiteColor,
                    outlineColor: kGrey2Color,
                    buttonText: 'Continue with Email',
                    hasicon: true,
                    mBottom: 10,
                    choiceIcon: CommonImageView(
                      imagePath: Assets.imagesMail,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: 'Already have an account?',
                        fontFamily: AppFonts.OUTFit_DISPLAY,
                        size: 14,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => LoginScreen());
                        },
                        child: MyText(
                          text: ' Log in',
                          fontFamily: AppFonts.OUTFit_DISPLAY,
                          size: 14,
                          color: KSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
