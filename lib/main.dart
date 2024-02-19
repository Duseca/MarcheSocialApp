import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/controller/onboarding2_controller.dart';

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
      title: 'marche social',
      theme: lightTheme,
      themeMode: ThemeMode.light,
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),

      //initialRoute: AppLinks.splash_screen,
      // getPages: AppRoutes.pages,
      home: OnBoardingController2(),
    );
  }
}
