import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/sidemenu/orders/track_order.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class OrderStatusDetails extends StatelessWidget {
  const OrderStatusDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context, title: 'Sneakers for men', bgColor: kPrimaryColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: CommonImageView(
                    imagePath: Assets.imagesSneakers3,
                    height: 70,
                    width: 70,
                    radius: 10,
                    fit: BoxFit.cover,
                  ),
                  title: MyText(
                    text: 'Sneakers Peakers',
                    size: 18,
                    weight: FontWeight.w500,
                  ),
                  subtitle: Column(children: [
                    Row(
                      children: [
                        MyText(
                          text: 'Order No. 1234643',
                          weight: FontWeight.w200,
                          color: kGrayColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyText(
                          text: '12 Oct 2023. 10:43 pm',
                          weight: FontWeight.w200,
                          color: kGrayColor,
                        ),
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: rounded2(kWhiteColor),
                  height: 171,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              text: 'Update/Edit Order',
                              size: 14,
                              weight: FontWeight.w500,
                              paddingLeft: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: CommonImageView(
                                imagePath: Assets.imagesNext,
                                height: 12,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: AppSizes.HORIZONTAL,
                          child: Divider(
                            height: 0,
                            color: kGrey1Color,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              text: 'Shipping Information',
                              size: 14,
                              weight: FontWeight.w500,
                              paddingLeft: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: CommonImageView(
                                imagePath: Assets.imagesNext,
                                height: 12,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: AppSizes.HORIZONTAL,
                          child: Divider(
                            height: 0,
                            color: kGrey1Color,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              text: 'Contact Buyer',
                              size: 14,
                              weight: FontWeight.w500,
                              paddingLeft: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: CommonImageView(
                                imagePath: Assets.imagesNext,
                                height: 12,
                              ),
                            )
                          ],
                        )
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                MyText(
                  text: 'Order Details',
                  size: 14,
                  weight: FontWeight.w500,
                ),
                AnotherStepper(
                  stepperList: stepperData,
                  stepperDirection: Axis.vertical,
                  verticalGap: 30,
                  barThickness: 2,
                  activeBarColor: kPrimaryColor,
                  inActiveBarColor: KSecondaryColor,
                  iconWidth: 20,
                  iconHeight: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
