import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class BlockedUsers extends StatelessWidget {
  const BlockedUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: simpleAppBar(
            context: context, title: 'Blocked Users', bgColor: kPrimaryColor),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
              child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  physics: const BouncingScrollPhysics(),
                  children: [
                MyText(
                  text:
                      'People you have blocked will not be able to follow you',
                  paddingBottom: 20,
                ),
                MyText(
                  text: '• See your profile',
                  color: kGrey5Color,
                ),
                MyText(
                  text: '• Search your profile',
                  color: kGrey5Color,
                ),
                MyText(
                  text: '• See your posting',
                  color: kGrey5Color,
                ),
                MyText(
                  text: '• React to your posting',
                  color: kGrey5Color,
                ),
                MyText(
                  text: '• Comment on your posting',
                  color: kGrey5Color,
                ),
                SizedBox(
                  height: 40,
                ),
                MyText(
                  text: 'Blocked',
                  size: 16,
                  weight: FontWeight.w200,
                  paddingBottom: 20,
                ),
                Container(
                  decoration: roundedr(kWhiteColor, 5),
                  child: ListTile(
                    leading: CommonImageView(
                        imagePath: Assets.imagesChatdummy,
                        height: 40,
                        width: 40,
                        radius: 200,
                        fit: BoxFit.cover),
                    title: MyText(
                      text: 'Ahmed Ali Khan',
                      size: 14,
                      weight: FontWeight.w500,
                    ),
                    trailing: SizedBox(
                        width: 100,
                        height: 30,
                        child: MyButton(
                          onTap: () {},
                          buttonText: 'Unblock',
                          fontColor: KTertiaryColor,
                          backgroundColor: kGrey1Color,
                        )),
                  ),
                )
              ]))
        ]));
  }
}
