import 'package:get/get.dart';

import 'package:marche_social_app/view/screens/launch/splash_screen.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: AppLinks.splash_screen,
      page: () => SplashScreen(),
    ),
  ];
}

class AppLinks {
  static const splash_screen = '/splash_screen';
  // user registration links

  static const user_registration_options_screen =
      '/registration_options_screen';
  static const signup_screen = '/signup_screen';
  static const phone_number_screen = '/phone_number_screen';
  static const otp_screen = '/otp_screen';
  static const otp_code_verification_screen = '/otp_code_verification_screen';
  static const language_selection_screen = '/language_selection_screen';
  // user login links

  static const login_screen = '/login_screen';
  static const login_with_phone_num_screen = '/login_with_pho_num_screen';
  static const login_phone_otp_screen = '/login_phone_otp_screen';
  static const login_otp_verification_code_screen =
      '/login_otp_verification_code_screen';

  // home links
  static const home_screen = '/home_screen';
}
