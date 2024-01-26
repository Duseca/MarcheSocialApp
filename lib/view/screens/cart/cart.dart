import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/checkout_firsttime/proceed_checkout.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/quantity_tile.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: AppSizes.DEFAULT,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonImageView(
                    imagePath: Assets.imagesHamburgermenu,
                    height: 20,
                  ),
                  MyText(
                    text: 'Cart',
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  Row(
                    children: [
                      CommonImageView(
                        imagePath: Assets.imagesWallet,
                        height: 20,
                      ),
                      MyText(paddingLeft: 5, text: '115.34 €')
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                physics: const BouncingScrollPhysics(),
                children: [
                  for (var i = 0; i < 3; i++)
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: QuantityTile(
                        leading: Assets.imagesDummyproduct2,
                        subtitle1: '4747',
                        subtitle2: 'subtitle2',
                        title: 'title',
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: AppSizes.DEFAULT,
          child: MyButton(
            buttonText: 'Proceed to checkout',
            onTap: () {
              Get.to(() => ProceedCheckout());
            },
            radius: 50,
          ),
        ),
      ),
    );
  }
}
