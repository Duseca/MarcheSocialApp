import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class Changed extends StatelessWidget {
  const Changed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CommonImageView(
              imagePath: Assets.imagesChanged,
              height: 100,
            ),
            Center(
              child: MyText(
                text: 'Password changed',
                size: 18,
                paddingTop: 16,
                textAlign: TextAlign.center,
                weight: FontWeight.bold,
                paddingBottom: 22,
              ),
            ),
            Center(
              child: MyText(
                color: kGrayColor,
                text: 'Your password has been changed succesfully',
                size: 12,
                textAlign: TextAlign.center,
                paddingBottom: 30,
              ),
            ),
            Padding(
              padding: AppSizes.DEFAULT,
              child: MyButton(
                buttonText: 'Back to Login',
                onTap: () {},
                radius: 50,
              ),
            ),
          ]),
    );
  }
}
