import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail(
      {super.key,
      required this.productDescription,
      required this.starImage,
      required this.rateNumber,
      required this.soldNumber,
      required this.productPrice,
      required this.verticalSlashImge});
  final String productDescription;
  final String starImage;
  final int rateNumber;
  final int soldNumber;
  final String verticalSlashImge;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: MyText(
              text: productDescription,
              weight: FontWeight.w500,
              color: KTertiaryColor,
              fontFamily: AppFonts.OUTFit_DISPLAY,
              size: 16,
            )),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CommonImageView(
              imagePath: starImage,
            ),
            MyText(
              text: '$rateNumber',
              weight: FontWeight.w300,
              color: KTertiaryColor,
              fontFamily: AppFonts.OUTFit_DISPLAY,
              size: 16,
            ),
            SizedBox(
              width: 10,
            ),
            CommonImageView(
              imagePath: verticalSlashImge,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              alignment: Alignment.center,
              height: 26.29,
              width: 89.83,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(10.95),
              ),
              child: MyText(
                text: "$soldNumber",
                weight: FontWeight.w300,
                color: kQuarternaryColor,
                fontFamily: AppFonts.OUTFit_DISPLAY,
                size: 14,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        MyText(
          text: '\$${productPrice}',
          weight: FontWeight.w500,
          color: KSecondaryColor,
          fontFamily: AppFonts.OUTFit_DISPLAY,
          size: 24,
        ),
      ],
    );
  }
}
