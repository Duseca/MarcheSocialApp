import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/feedback.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/help.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/languages_settings.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/notifications_settings.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/payment_methods.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/privacy_policy.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/store_address.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/settings/terms_and_conditions.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                settingsTile('Store Address', () {
                  Get.to(() => StoreAddress());
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
                  onTap: () {
                    _showMyDialog();
                  },
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
                MyText(
                  text: 'Are you sure you want to Logout from your account?',
                  paddingLeft: 30,
                  paddingRight: 30,
                  paddingTop: 20,
                  paddingBottom: 20,
                  textAlign: TextAlign.center,
                  size: 18,
                  weight: FontWeight.bold,
                ),
                MyText(
                  text: 'You can login any time',
                  textAlign: TextAlign.center,
                  paddingLeft: 20,
                  paddingRight: 20,
                  paddingBottom: 20,
                  color: kGrey5Color,
                ),
                Padding(
                  padding: AppSizes.DEFAULT,
                  child: Row(
                    children: [
                      Expanded(
                        child: MyButton(
                          onTap: () {
                            //  Get.to(() => Reciept());
                          },
                          backgroundColor: kGrayColor,
                          buttonText: 'Cancel',
                          fontColor: kWhiteColor,
                          radius: 50,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: MyButton(
                          onTap: () {
                            //  Get.to(() => Reciept());
                          },
                          backgroundColor: kRedColor,
                          buttonText: 'Logout',
                          radius: 50,
                        ),
                      ),
                    ],
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
