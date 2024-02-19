import 'package:flutter/widgets.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class ProductTile extends StatelessWidget {
  ProductTile({super.key, this.isgrid, this.haslike});
  bool? isgrid, haslike;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 235,
          width: 162,
          child: Column(children: [
            Expanded(
              child: CommonImageView(
                imagePath: Assets.imagesDummyproduct,
                fit: BoxFit.cover,
                height: 113,
                width: 162,
                radius: 20,
              ),
            ),
            MyText(
              text: 'Sony Headphone True Wireless ',
              size: 16,
              weight: FontWeight.bold,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CommonImageView(
                      imagePath: Assets.imagesStar3,
                      height: 10,
                    ),
                    MyText(
                      text: '4.9 | ',
                      paddingLeft: 10,
                    ),
                  ],
                ),
                MyText(
                  text: '780 Sold',
                  paddingLeft: 10,
                  paddingRight: 20,
                ),
              ],
            ),
            Row(
              children: [
                MyText(
                  text: '\$68',
                  size: 20,
                  fontFamily: AppFonts.OSWALD,
                  weight: FontWeight.bold,
                ),
              ],
            )
          ]),
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 50,
              height: 25,
              decoration: roundedr(kRedColor.withOpacity(0.5), 40),
              child: Center(
                  child: MyText(
                text: 'Series',
                color: kWhiteColor,
              )),
            )),
        haslike == false
            ? SizedBox.shrink()
            : Positioned(
                top: 10,
                right: isgrid == true ? 20 : 10,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: circle(kWhiteColor.withOpacity(0.5),
                      kWhiteColor.withOpacity(0.5)),
                  child: Center(
                      child: CommonImageView(
                    imagePath: Assets.imagesHeart,
                    height: 18,
                  )),
                ))
      ],
    );
  }
}
