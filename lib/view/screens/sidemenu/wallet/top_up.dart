import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/sidemenu/wallet/wallet_payment.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class TopUp extends StatelessWidget {
  const TopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context, title: 'Top Up', bgColor: kPrimaryColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                MyText(
                  text: 'Enter the amount of Top Up',
                  textAlign: TextAlign.center,
                  paddingBottom: 20,
                ),
                Container(
                  height: 113,
                  decoration: rounded3(kPrimaryColor, kGrey3Color),
                  child: Center(
                    child: MyText(
                      text: '€ 550',
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    topUptile('€ 10'),
                    SizedBox(
                      width: 10,
                    ),
                    topUptile('€ 10'),
                    SizedBox(
                      width: 10,
                    ),
                    topUptile('€ 10'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    topUptile('€ 10'),
                    SizedBox(
                      width: 10,
                    ),
                    topUptile('€ 10'),
                    SizedBox(
                      width: 10,
                    ),
                    topUptile('€ 10'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    topUptile('€ 10'),
                    SizedBox(
                      width: 10,
                    ),
                    topUptile('€ 10'),
                    SizedBox(
                      width: 10,
                    ),
                    topUptile('€ 10'),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                MyButton(
                  onTap: () {
                    Get.to(() => WalletPayment());
                  },
                  buttonText: 'Continue',
                  radius: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget topUptile(String number) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          height: 36,
          decoration: rounded3(kPrimaryColor, kGrey3Color),
          child: Center(
            child: MyText(
              text: number,
            ),
          ),
        ),
      ),
    );
  }
}
