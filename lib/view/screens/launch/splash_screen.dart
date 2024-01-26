import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/auth/register/registeration_options.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenHandler();
  }

  Future<void> splashScreenHandler() async {
    Future.delayed(
      Duration(seconds: 2),
      () => (),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: AppSizes.DEFAULT,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                MyText(
                  text: 'Explore the app',
                  color: KTertiaryColor,
                  fontFamily: AppFonts.OUTFit_DISPLAY,
                  size: 24,
                  weight: FontWeight.w500,
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: MyText(
                    textAlign: TextAlign.center,
                    text: 'Now your Shoppin and Social media at one\nplace',
                    color: kQuarternaryColor,
                    fontFamily: AppFonts.OUTFit_DISPLAY,
                    size: 16,
                    weight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                MyButton(
                  onTap: () {},
                  buttonText: 'Login',
                  backgroundColor: KSecondaryColor,
                  fontColor: kWhiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  radius: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: () {
                    Get.to(() => RegistrationScreen());
                  },
                  buttonText: 'Register',
                  backgroundColor: kWhiteColor,
                  fontColor: KTertiaryColor,
                  outlineColor: kGrey2Color,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  radius: 50,
                ),
                SizedBox(
                  height: 32,
                ),
                MyText(
                  text: 'Continue as Guest',
                  onTap: () {},
                  fontFamily: AppFonts.OUTFit_DISPLAY,
                  size: 16,
                  color: kBlueColor,
                  weight: FontWeight.w500,
                ),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
