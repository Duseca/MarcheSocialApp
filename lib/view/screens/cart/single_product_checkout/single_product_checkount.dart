import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/cart/checkout_firsttime/payment_methods.dart';
import 'package:marche_social_app/view/widget/checkout_tile.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class SingleProductCheckout extends StatelessWidget {
  const SingleProductCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context: context, title: 'Checkout'),
      backgroundColor: kWhiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                Checkouttile(
                  color: 'Black',
                  leading: Assets.imagesDummyproduct,
                  qty: '01',
                  size: '41',
                  subtitle1: '€ 270',
                  subtitle2: '  € 400',
                  title: 'Cocooil Body Oil',
                  issingle: true,
                ),
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
                                  weight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyText(
                                text: 'Pakistan',
                                size: 14,
                                weight: FontWeight.w500,
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Product Total',
                      size: 14,
                      weight: FontWeight.w600,
                    ),
                    MyText(
                      text: '€ 270',
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Shipping Charges',
                      size: 14,
                      weight: FontWeight.w600,
                    ),
                    MyText(
                      text: 'Free',
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Discount',
                      size: 14,
                      weight: FontWeight.w600,
                    ),
                    MyText(
                      text: '--',
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Promo Code',
                      size: 14,
                      weight: FontWeight.w600,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                          child: TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: kGrey3Color)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        BorderSide(color: kGrey3Color))),
                          ),
                          width: 100,
                        ),
                        MyText(
                          paddingLeft: 10,
                          text: 'Apply',
                          size: 14,
                          color: KSecondaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                  color: kGrey3Color,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Total',
                      size: 14,
                      weight: FontWeight.w600,
                    ),
                    MyText(
                      text: '€ 270',
                      size: 14,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              onTap: () {
                Get.to(() => PaymentMethods());
              },
              buttonText: 'Proceed to checkout',
              radius: 50,
            ),
          )
        ],
      ),
    );
  }
}
