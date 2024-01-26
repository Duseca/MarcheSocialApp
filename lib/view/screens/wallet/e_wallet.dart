import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/screens/wallet/top_up.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';
import 'package:marche_social_app/view/widget/transanction_tile.dart';

class EWallet extends StatelessWidget {
  const EWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context, title: 'My Wallet', bgColor: kPrimaryColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                Stack(
                  children: [
                    CommonImageView(
                      imagePath: Assets.imagesVisacard,
                    ),
                    Positioned(
                        bottom: 10,
                        right: 10,
                        child: SizedBox(
                          width: 100,
                          child: MyButton(
                            radius: 50,
                            buttonText: 'Top Up',
                            onTap: () {
                              Get.to(() => TopUp());
                            },
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Transanction History',
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                    CommonImageView(
                      imagePath: Assets.imagesSearch,
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TransanctionTile(
                    name: 'Leather shoes for men',
                    date: 'June 12, 2023',
                    time: '12:30 Pm',
                    isorder: false,
                    price: '157'),
                SizedBox(
                  height: 10,
                ),
                TransanctionTile(
                    name: 'Leather shoes for men',
                    date: 'June 12, 2023',
                    time: '12:30 Pm',
                    isorder: true,
                    price: '157')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
