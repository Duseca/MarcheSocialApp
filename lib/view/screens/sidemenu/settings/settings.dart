import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/screens/cart/checkout_firsttime/payment_methods.dart';
import 'package:marche_social_app/view/screens/sidemenu/settings/feedback.dart';
import 'package:marche_social_app/view/screens/sidemenu/settings/help.dart';
import 'package:marche_social_app/view/screens/sidemenu/settings/languages_settings.dart';
import 'package:marche_social_app/view/screens/sidemenu/settings/notifications_settings.dart';
import 'package:marche_social_app/view/screens/sidemenu/settings/privacy_policy.dart';
import 'package:marche_social_app/view/screens/sidemenu/settings/shipping_address.dart';
import 'package:marche_social_app/view/screens/sidemenu/settings/terms_and_conditions.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context, title: 'Settings', bgColor: kPrimaryColor),
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
                  text: 'General',
                  color: kGrayColor,
                  size: 10,
                ),
                settingsTile('Notifications', () {
                  Get.to(() => NotificationsSettings());
                }),
                settingsTile('Languages', () {
                  Get.to(() => LanguagesSettings());
                }),
                settingsTile('Shipping Address', () {
                  Get.to(() => ShippingAddress());
                }),
                settingsTile('Payment Methods', () {
                  Get.to(() => PaymentMethods());
                }),
                MyText(
                  text: 'Marche Social',
                  size: 10,
                  color: kGrayColor,
                ),
                settingsTile('Terms and Conditions', () {
                  Get.to(() => TermsAndConditions());
                }),
                settingsTile('Privacy Policy', () {
                  Get.to(() => PrivacyPolicy());
                }),
                settingsTile('Feedback', () {
                  Get.to(() => Feedbackk());
                }),
                settingsTile('Help', () {
                  Get.to(() => Help());
                }),
                ListTile(
                  onTap: () {},
                  contentPadding: EdgeInsets.all(0),
                  title: MyText(
                    text: 'Logout',
                    color: kRedColor,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: KTertiaryColor,
                    size: 15,
                  ),
                ),
                Divider(
                  color: kBlueColor,
                  thickness: 1,
                  height: 0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget settingsTile(String title, VoidCallback onTap) {
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
          color: kBlueColor,
          height: 0,
          thickness: 1,
        )
      ],
    );
  }
}
