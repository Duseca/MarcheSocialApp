import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/settings/add_shipping_address.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: simpleAppBar(
          context: context,
          title: 'Shipping Address',
          hasIcon: false,
          choiceicon: CommonImageView(
            imagePath: Assets.imagesEdit,
            height: 20,
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  decoration: rounded2(kGrey1Color),
                  height: 105,
                  child: Padding(
                    padding: AppSizes.HORIZONTAL,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              MyText(
                                text: 'Charles Benjamin',
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: MyText(
                                  text:
                                      'Street 148 Sector 18, Islamabad, Pakitan',
                                  size: 14,
                                  weight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyText(
                                text: 'Pakistan',
                                size: 14,
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyText(
                                text: 'Edit',
                                color: kBlueColor,
                              ),
                            ],
                          )
                        ]),
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
          buttonText: 'Add new address',
          onTap: () {
            Get.to(() => AddShippingAddress());
          },
          radius: 50,
        ),
      ),
    );
  }
}
