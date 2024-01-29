import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/star_rating.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CommonImageView(
              imagePath: Assets.imagesChatdummy2,
              height: 50,
              width: 50,
              radius: 200,
              fit: BoxFit.cover),
          title: MyText(
            text: 'Madelina',
            size: 14,
            weight: FontWeight.bold,
          ),
          subtitle: StarRating(rating: 4),
          trailing: MyText(
            text: '1 month ago',
            color: kGrayColor,
          ),
        ),
        MyText(
            size: 14,
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        Divider(
          color: kGrey2Color,
        ),
      ],
    );
  }
}
