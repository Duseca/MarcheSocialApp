import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/sidemenu/wallet/reciept.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

import '../../../../constants/app_sizes.dart';

class WalletPayment extends StatefulWidget {
  const WalletPayment({super.key});

  @override
  State<WalletPayment> createState() => _WalletPaymentState();
}

class _WalletPaymentState extends State<WalletPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context: context, title: 'Payment Methods'),
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
                paymenttitle(Assets.imagesPaypal, 'PayPal', 'Connected'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  decoration: rounded2(kGrey2Color),
                  child: Center(
                    child: ListTile(
                      leading: CommonImageView(
                        imagePath: Assets.imagesMaster,
                        height: 40,
                        width: 40,
                        fit: BoxFit.contain,
                      ),
                      title: MyText(
                        text: 'Card',
                        weight: FontWeight.w500,
                      ),
                      subtitle: MyText(
                        text: '**** **** **** 1456',
                        color: kGrey5Color,
                      ),
                      trailing: MyText(text: 'Connected'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  decoration: rounded2(KSecondaryColor.withOpacity(0.2)),
                  child: Center(
                    child: ListTile(
                      leading: CommonImageView(
                        imagePath: Assets.imagesGoogle,
                        height: 40,
                        width: 40,
                        fit: BoxFit.contain,
                      ),
                      title: MyText(
                        text: 'Card',
                        weight: FontWeight.w500,
                      ),
                      subtitle: MyText(
                        text: '**** **** **** 1456',
                        color: kGrey5Color,
                      ),
                      trailing: MyText(text: 'Connected'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  decoration: rounded2(kGrey2Color),
                  child: Center(
                    child: ListTile(
                      leading: CommonImageView(
                        imagePath: Assets.imagesApple,
                        height: 40,
                        width: 40,
                        fit: BoxFit.contain,
                      ),
                      title: MyText(
                        text: 'Apple Pay',
                        weight: FontWeight.w500,
                      ),
                      trailing: SizedBox(
                        width: 100,
                        child: MyButton(
                          buttonText: 'Connect',
                          onTap: () {},
                          radius: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                MyText(
                  textAlign: TextAlign.center,
                  text: 'Add new card',
                  color: kBlueColor,
                  weight: FontWeight.w500,
                )
              ],
            ),
          ),
          Padding(
            padding: AppSizes.DEFAULT,
            child: MyButton(
              onTap: () {
                _showMyDialog();
              },
              buttonText: 'Continue',
              radius: 50,
            ),
          )
        ],
      ),
    );
  }

  Widget paymenttitle(String leading, title, trailing) {
    return Container(
      height: 80,
      decoration: rounded2(kGrey2Color),
      child: Center(
        child: ListTile(
          leading: CommonImageView(
            imagePath: leading,
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          ),
          title: MyText(
            text: title,
            weight: FontWeight.w500,
          ),
          trailing: MyText(text: trailing),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            surfaceTintColor: kWhiteColor,
            backgroundColor: kWhiteColor,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20,
                ),
                CommonImageView(
                  imagePath: Assets.imagesTransanctiob,
                  height: 131,
                  fit: BoxFit.contain,
                ),
                MyText(
                  text: 'Transanction Successful',
                  paddingTop: 20,
                  paddingBottom: 20,
                  size: 18,
                  weight: FontWeight.bold,
                ),
                MyText(
                  text:
                      'You have successfully top up of € 550 into your wallet.',
                  textAlign: TextAlign.center,
                  paddingLeft: 20,
                  paddingRight: 20,
                  paddingBottom: 20,
                  color: kGrey5Color,
                ),
                Padding(
                  padding: AppSizes.DEFAULT,
                  child: MyButton(
                    onTap: () {
                      Get.to(() => Reciept());
                    },
                    buttonText: 'View Reciept',
                    radius: 50,
                  ),
                ),
                Padding(
                  padding: AppSizes.HORIZONTAL,
                  child: MyButton(
                    onTap: () {
                      // _showMyDialog();
                    },
                    buttonText: 'Done',
                    radius: 50,
                    backgroundColor: kGrey2Color,
                    fontColor: kBlueColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ));
      },
    );
  }
}
