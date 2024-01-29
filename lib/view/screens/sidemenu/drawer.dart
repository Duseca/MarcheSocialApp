import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/bottom_nav_bar/seller_bottom_nav_bar.dart';
import 'package:marche_social_app/view/screens/sidemenu/settings/settings.dart';
import 'package:marche_social_app/view/screens/sidemenu/edit_profile.dart';
import 'package:marche_social_app/view/screens/sidemenu/liked.dart';
import 'package:marche_social_app/view/screens/sidemenu/orders/my_orders.dart';
import 'package:marche_social_app/view/screens/sidemenu/wallet/e_wallet.dart';
import 'package:marche_social_app/view/screens/sidemenu/wallet/wallet_payment.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class Drawermenu extends StatefulWidget {
  @override
  State<Drawermenu> createState() => _DrawermenuState();
}

bool isopen = false;
final ExpansionTileController controller = ExpansionTileController();

class _DrawermenuState extends State<Drawermenu> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isopen == false,
      child: Drawer(
        backgroundColor: kWhiteColor,
        surfaceTintColor: kWhiteColor,
        width: 250,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CommonImageView(
                        imagePath: Assets.imagesChatdummy,
                        height: 100,
                        width: 100,
                        radius: 100,
                      ),
                      MyText(
                        text: 'Melisa Thomas',
                        paddingTop: 10,
                      ),
                      MyText(
                        text: 'melisathomas32@gmail.com',
                        paddingTop: 5,
                        paddingBottom: 20,
                      ),
                      SizedBox(
                          width: 200,
                          child: MyButton(
                            onTap: () {
                              Get.offAll(() => SellerBottomNavBar());
                            },
                            buttonText: 'Switch to Seller',
                            radius: 50,
                          ))
                    ],
                  ),
                  menuTile('Profile', () {
                    Get.to(() => EditProfile());
                  }),
                  const Padding(
                    padding: AppSizes.HORIZONTAL,
                    child: Divider(
                      color: kGrayColor,
                      height: 0,
                    ),
                  ),
                  menuTile('Wallet', () {
                    Get.to(() => EWallet());
                  }),
                  const Padding(
                    padding: AppSizes.HORIZONTAL,
                    child: Divider(
                      height: 0,
                      color: kGrayColor,
                    ),
                  ),
                  menuTile('My Orders', () {
                    Get.to(() => MyOrders());
                  }),
                  const Padding(
                    padding: AppSizes.HORIZONTAL,
                    child: Divider(
                      height: 0,
                      color: kGrayColor,
                    ),
                  ),
                  menuTile('Liked', () {
                    Get.to(() => Liked());
                  }),
                  const Padding(
                    padding: AppSizes.HORIZONTAL,
                    child: Divider(
                      height: 0,
                      color: kGrayColor,
                    ),
                  ),
                  menuTile('Settings', () {
                    Get.to(() => Settings());
                  }),
                  SizedBox(
                    height: 30,
                  ),
                  MyText(
                    paddingLeft: 20,
                    text: 'Terms and Conditions',
                    paddingBottom: 20,
                    size: 10,
                  ),
                  MyText(
                    paddingLeft: 20,
                    text: 'Privacy Policy',
                    paddingBottom: 20,
                    size: 10,
                  ),
                  MyText(
                    paddingLeft: 20,
                    text: 'Contact Us',
                    size: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuTile(String title, VoidCallback onTap) {
    return ListTile(
      title: MyText(
        text: title,
      ),
      titleAlignment: ListTileTitleAlignment.center,
      onTap: onTap,
    );
  }
}
