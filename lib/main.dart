import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/controller/onboarding1_controller.dart';
import 'package:marche_social_app/view/screens/auth/register/registeration_options.dart';
import 'package:marche_social_app/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:marche_social_app/view/screens/checkout_firsttime/proceed_checkout.dart';
import 'package:marche_social_app/view/screens/launch/splash_screen.dart';
import 'package:marche_social_app/view/screens/review/single_product_review.dart';
import 'package:marche_social_app/view/screens/settings/settings.dart';
import 'package:marche_social_app/view/screens/sidemenu/edit_profile.dart';
import 'package:marche_social_app/view/screens/sidemenu/my_orders.dart';
import 'package:marche_social_app/view/screens/review/review.dart';
import 'package:marche_social_app/view/screens/single_product_checkout/single_product_checkount.dart';
import 'package:marche_social_app/view/screens/wallet/e_wallet.dart';

import 'config/theme/light_theme.dart';

void main() {
  runApp(MyApp());
}

//DO NOT REMOVE Unless you find their usage.
const dummyimg1 =
    'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80';
const dummyimg12 =
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';
const dummyimg3 =
    'https://images.unsplash.com/photo-1616766098956-c81f12114571?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'TITLE',
      theme: lightTheme,
      themeMode: ThemeMode.light,
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),

      //initialRoute: AppLinks.splash_screen,
      // getPages: AppRoutes.pages,
      home: OnBoardingController1(),
    );
  }
}
