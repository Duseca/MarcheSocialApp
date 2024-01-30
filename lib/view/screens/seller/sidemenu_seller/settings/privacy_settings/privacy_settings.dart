import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/feedback.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/privacy_settings/blocked_user.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/privacy_settings/follow_public_content.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/privacy_settings/search.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class PrivacySettings extends StatelessWidget {
  const PrivacySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: simpleAppBar(
            context: context,
            title: 'Privacy Settings',
            bgColor: kPrimaryColor),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
              child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  physics: const BouncingScrollPhysics(),
                  children: [
                privacysettingtile('Online Status', () {
                  Get.to(() => Feedbackk());
                }),
                privacysettingtile('Search', () {
                  Get.to(() => Search());
                }),
                privacysettingtile('Followers & Public Content', () {
                  Get.to(() => FollowPublicContect());
                }),
                privacysettingtile('Blocked Users', () {
                  Get.to(() => BlockedUsers());
                }),
              ]))
        ]));
  }

  Widget privacysettingtile(String title, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.all(0),
          title: MyText(
            text: title,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right_rounded,
            color: KTertiaryColor,
            size: 15,
          ),
        ),
        Divider(
          color: kGrey2Color,
          height: 0,
          thickness: 1,
        )
      ],
    );
  }
}
