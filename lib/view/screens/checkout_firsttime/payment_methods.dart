import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/checkout_firsttime/success_confirmation.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

import '../../../constants/app_sizes.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

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
                  height: 10,
                ),
                paymenttitle(Assets.imagesWallet2, 'Walet', 'Connected'),
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
                Get.to(() => SuccessConfirmation());
              },
              buttonText: 'Pay',
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
}
