import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class MainBar extends StatelessWidget {
  MainBar({super.key, required this.onmenuTap, required this.title});
  VoidCallback onmenuTap;
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: AppSizes.DEFAULT,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: onmenuTap,
              child: Icon(
                Icons.menu,
                size: 40,
              ),
            ),
            MyText(
              text: title,
              size: 16,
              weight: FontWeight.bold,
            ),
            Row(
              children: [
                CommonImageView(
                  imagePath: Assets.imagesWallet,
                  height: 22,
                ),
                MyText(
                  text: '115.34 €',
                  paddingLeft: 10,
                ),
              ],
            )
          ],
        ));
  }
}
