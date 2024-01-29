import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/cart/checkout_firsttime/invoice.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class SuccessConfirmation extends StatelessWidget {
  const SuccessConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15),
              physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.15,
                    ),
                    CommonImageView(
                      height: 195,
                      fit: BoxFit.contain,
                      imagePath: Assets.imagesSuccess,
                    ),
                    MyText(
                      paddingTop: 50,
                      text: 'Order Successful',
                      size: 24,
                      weight: FontWeight.bold,
                      color: kBlueColor,
                      paddingBottom: 20,
                    ),
                    MyText(text: 'You have successfuly made an order')
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: Column(
              children: [
                MyButton(onTap: () {}, buttonText: 'View Order', radius: 50),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: () {},
                  buttonText: 'Continue Shopping',
                  radius: 50,
                  backgroundColor: kBlueColor,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => Invoice());
                  },
                  child: MyText(
                    text: 'View Invoce',
                    color: KSecondaryColor,
                    weight: FontWeight.w500,
                    paddingTop: 10,
                    paddingBottom: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
