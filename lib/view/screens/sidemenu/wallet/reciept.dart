import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class Reciept extends StatelessWidget {
  const Reciept({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: AppSizes.DEFAULT,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  MyText(
                    text: 'Invoice',
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  PopupMenuButton(
                      position: PopupMenuPosition.under,
                      surfaceTintColor: kWhiteColor,
                      itemBuilder: (BuildContext context) => [
                            PopupMenuItem(
                                child: SizedBox(
                              width: 100,
                              child: ListTile(
                                leading: CommonImageView(
                                  imagePath: Assets.imagesShare,
                                  height: 18,
                                ),
                                title: MyText(text: 'Share'),
                              ),
                            )),
                            PopupMenuItem(
                                child: SizedBox(
                              width: 150,
                              child: ListTile(
                                leading: CommonImageView(
                                  imagePath: Assets.imagesDownload,
                                  height: 18,
                                ),
                                title: MyText(text: 'Download'),
                              ),
                            )),
                          ])
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
                  CommonImageView(
                    imagePath: Assets.imagesQrcode,
                    width: Get.width,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 202,
                    decoration: rounded2(kGrey1Color),
                    child: Padding(
                      padding: AppSizes.DEFAULT,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: 'Amount',
                                  size: 14,
                                  weight: FontWeight.w600,
                                ),
                                MyText(
                                  text: '€ 270',
                                  size: 14,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: 'VAT',
                                  size: 14,
                                  weight: FontWeight.w600,
                                ),
                                MyText(
                                  text: '€ 15',
                                  size: 14,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: 'Shipping fee',
                                  size: 14,
                                  weight: FontWeight.w600,
                                ),
                                MyText(
                                  text: '€ 30',
                                  size: 14,
                                ),
                              ],
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
                                  text: '-€ 40',
                                  size: 14,
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
                                  size: 16,
                                  weight: FontWeight.w600,
                                ),
                                MyText(
                                  text: '€ 270',
                                  weight: FontWeight.w600,
                                  size: 16,
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: rounded2(kGrey1Color),
                    height: 150,
                    child: Padding(
                      padding: AppSizes.DEFAULT,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: 'Payment Method',
                                  size: 14,
                                  weight: FontWeight.w600,
                                ),
                                MyText(
                                  text: 'E-Wallet',
                                  size: 14,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: 'Date',
                                  size: 14,
                                  weight: FontWeight.w600,
                                ),
                                MyText(
                                  text: '12 Jun 2023, 14:50',
                                  size: 14,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: 'Transaction ID',
                                  size: 14,
                                  weight: FontWeight.w600,
                                ),
                                MyText(
                                  text: '14788522852',
                                  size: 14,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: 'Status',
                                  size: 14,
                                  weight: FontWeight.w600,
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 50,
                                  child: MyButton(
                                    buttonText: 'Paid',
                                    onTap: () {},
                                    backgroundColor: kGreenColor,
                                    radius: 40,
                                  ),
                                )
                              ],
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: AppSizes.DEFAULT,
          child: MyButton(
            buttonText: 'Done',
            onTap: () {},
            radius: 50,
          ),
        ),
      ),
    );
  }
}
