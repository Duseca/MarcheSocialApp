import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class Onboarding2_1 extends StatelessWidget {
  const Onboarding2_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CommonImageView(
            imagePath: Assets.imagesBgonboarding1,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Center(
                child: MyText(
                  text: 'Welcome to Marche Social',
                  size: 24,
                  weight: FontWeight.w600,
                  color: kWhiteColor,
                  textAlign: TextAlign.center,
                  paddingBottom: 10,
                ),
              ),
              Center(
                child: MyText(
                  paddingLeft: 40,
                  paddingRight: 40,
                  textAlign: TextAlign.center,
                  text: 'One of the best E-commerce app',
                  color: kWhiteColor,
                  paddingBottom: 180,
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
