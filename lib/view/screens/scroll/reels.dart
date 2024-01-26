import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class Reels extends StatelessWidget {
  const Reels({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: AppSizes.DEFAULT,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 19,
                  ),
                  Row(
                    children: [
                      CommonImageView(
                        imagePath: Assets.imagesWallet,
                        height: 20,
                      ),
                      MyText(
                        text: '115.34 €',
                        paddingLeft: 10,
                        paddingRight: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: CommonImageView(
                imagePath: Assets.imagesReel,
                fit: BoxFit.cover,
                width: Get.width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
