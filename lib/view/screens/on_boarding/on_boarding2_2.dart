import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class Onboarding2_2 extends StatelessWidget {
  const Onboarding2_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CommonImageView(
            imagePath: Assets.imagesBgonboardin2,
            fit: BoxFit.contain,
            height: Get.height * 0.6,
          ),
        ),
        Center(
          child: MyText(
            text: 'Simplifies Purchasing Experience',
            size: 24,
            paddingLeft: 40,
            paddingRight: 40,
            weight: FontWeight.w600,
            textAlign: TextAlign.center,
            paddingBottom: 10,
          ),
        ),
        Center(
          child: MyText(
            paddingLeft: 40,
            paddingRight: 40,
            textAlign: TextAlign.center,
            text:
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
            color: kGrey5Color,
            paddingBottom: 80,
          ),
        ),
      ]),
    );
  }
}
