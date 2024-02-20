import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/star_rating.dart';

class SearchTile extends StatelessWidget {
  const SearchTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            CommonImageView(
              imagePath: Assets.imagesShoe3,
              height: 80,
              radius: 10,
              fit: BoxFit.cover,
              width: 88,
            ),
            Expanded(
                child: ListTile(
                    title: MyText(
                      text: 'Classic Comfort Shirt',
                      size: 14,
                      paddingBottom: 10,
                      weight: FontWeight.bold,
                    ),
                    subtitle: Row(
                      children: [
                        StarRating(
                          rating: 4.5,
                          size: 10,
                        ),
                        MyText(
                          text: '4.7',
                          color: kYellowColor,
                          paddingRight: 5,
                        ),
                        MyText(
                          text: '(692)',
                          color: kGrayColor,
                        )
                      ],
                    )))
          ],
        ),
        Positioned(
            top: 5,
            right: 10,
            child: CommonImageView(
              imagePath: Assets.imagesHeart3,
              height: 15,
            )),
        Positioned(
            bottom: 5,
            right: 10,
            child: Row(
              children: [
                MyText(
                  text: '€68',
                  size: 15,
                  paddingRight: 10,
                  weight: FontWeight.bold,
                  fontFamily: AppFonts.OSWALD,
                ),
                MyText(
                  text: '€68',
                  size: 10,
                  color: kGrayColor,
                  decoration: TextDecoration.lineThrough,
                )
              ],
            ))
      ],
    );
  }
}
