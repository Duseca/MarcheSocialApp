import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/settings/delete_account.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        context: context,
        title: 'Help',
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
                  text: 'Marchè Social Help Center',
                  weight: FontWeight.w600,
                  paddingBottom: 5,
                ),
                MyText(
                  size: 12,
                  text:
                      "Welcome to Marchè Social – Your Social Hub for Posts, groups, and Events!\n\nExplore the world of seamless social interaction, educational pursuits, and event discovery with the Partner app. Whether you're new to the platform or looking to maximize your experience, our Help Center is your go-to resource for guidance and solutions.\nDiscover how to create compelling posts, share engaging courses, and stay updated on exciting events. Our comprehensive guides and step-by-step tutorials are designed to empower you in making the most of every feature Marchè Social has to offer. If you ever find yourself with questions, we're here to help – simply navigate through the sections below to find the answers you need.\nLet's make your Marchè Social  experience extraordinary!\nIf you want to de activate or delete your account click here",
                  paddingBottom: 20,
                  color: kGrayColor,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'If you want to de activate or delete your account',
                      style: TextStyle(
                          fontFamily: AppFonts.OUTFit_DISPLAY,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: KTertiaryColor)),
                  TextSpan(
                      text: ' click here',
                      style: TextStyle(
                          fontFamily: AppFonts.OUTFit_DISPLAY,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: kBlueColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => const DeleteAccount()))
                ]))
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: AppSizes.DEFAULT,
        child: MyButton(
          buttonText: 'Contact Customer Support',
          onTap: () {},
          radius: 50,
        ),
      ),
    );
  }
}
