import 'package:flutter/widgets.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class ProductGalleryImage extends StatelessWidget {
  ProductGalleryImage({super.key, required this.index, required this.path});
  String path;
  int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CommonImageView(
          imagePath: path,
          fit: BoxFit.cover,
          radius: 10,
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 70,
              height: 25,
              decoration: roundedr(kRedColor.withOpacity(0.5), 40),
              child: Center(
                  child: MyText(
                text: 'Series',
                color: kWhiteColor,
              )),
            )),
        Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 70,
              height: 25,
              decoration: roundedr(kRedColor.withOpacity(0.5), 40),
              child: Center(
                  child: MyText(
                text: 'Series',
                color: kWhiteColor,
              )),
            )),
        Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: 30,
              height: 30,
              decoration: circle(
                  kWhiteColor.withOpacity(0.5), kWhiteColor.withOpacity(0.5)),
              child: Center(
                  child: CommonImageView(
                imagePath: Assets.imagesHeart,
                height: 18,
              )),
            )),
        Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              width: 30,
              height: 30,
              decoration: circle(
                  kWhiteColor.withOpacity(0.5), kWhiteColor.withOpacity(0.5)),
              child: Center(
                  child: MyText(
                text: '${index + 1}/${10}',
              )),
            ))
      ],
    );
  }
}
