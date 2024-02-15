import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/checkout_tile.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';
import 'package:marche_social_app/view/widget/star_rating.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context, title: 'Review', bgColor: kPrimaryColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  decoration: rounded(kWhiteColor),
                  child: Checkouttile(
                      color: 'Black',
                      leading: Assets.imagesDummyproduct2,
                      qty: '01',
                      size: '41',
                      subtitle1: '€ 270',
                      issingle: true,
                      subtitle2: '  € 400',
                      title: 'Cocooil Body Oil'),
                ),
                MyText(
                  text: 'How was your Order?',
                  textAlign: TextAlign.center,
                  weight: FontWeight.w600,
                  paddingTop: 20,
                  size: 20,
                ),
                MyText(
                  text: 'Please rate us and give us a review',
                  textAlign: TextAlign.center,
                  weight: FontWeight.w600,
                  color: kGrayColor,
                  paddingTop: 10,
                  size: 16,
                  paddingBottom: 10,
                ),
                Center(
                  child: StarRating(
                    rating: 4.4,
                    size: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                  maxLines: 8,
                  filledColor: kWhiteColor,
                  bordercolor: kWhiteColor,
                  hint: '\nWrite your review',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CommonImageView(
                      imagePath: Assets.imagesPic,
                      height: 10,
                    ),
                  ),
                  marginBottom: 60,
                ),
                MyButton(
                  onTap: () {},
                  buttonText: 'Submit',
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
