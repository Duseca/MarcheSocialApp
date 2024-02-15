import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final int starCount;
  final double size;

  StarRating({required this.rating, this.starCount = 5, this.size = 20.0});

  @override
  Widget build(BuildContext context) {
    int fullStars = rating.floor();
    double remainingRating = rating - fullStars;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(starCount, (index) {
        if (index < fullStars) {
          // Full star
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: CommonImageView(
              imagePath: Assets.imagesStar3,
              fit: BoxFit.contain,
              width: size,
              height: size,
            ),
          );
        } else if (index == fullStars && remainingRating > 0) {
          // Partial star
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: CommonImageView(
              imagePath: Assets.imagesHalf2,
              height: size,
              width: size,
            ),
          );
        } else {
          // Empty star
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(null),
          );
        }
      }),
    );
  }
}
