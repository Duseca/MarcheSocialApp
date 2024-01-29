import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/screens/launch/splash_screen.dart';
import 'package:marche_social_app/view/screens/auth/on_boarding/on_boarding2_1.dart';
import 'package:marche_social_app/view/screens/auth/on_boarding/on_boarding2_2.dart';
import 'package:marche_social_app/view/screens/auth/on_boarding/on_boarding2_3.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingController2 extends StatefulWidget {
  @override
  State<OnBoardingController2> createState() => _OnBoardingController2State();
}

class _OnBoardingController2State extends State<OnBoardingController2> {
  final PageController controller = PageController();

  bool onLastPage = false;

  final List<Widget> screens = [
    const Onboarding2_1(),
    const Onboarding2_2(),
    const Onboarding2_3()

    // Add more screens as needed
  ];

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      screens.length,
      (index) => screens,
    );
    bool showFloatButton = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 16),
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              itemCount: pages.length,
              itemBuilder: (_, index) {
                return screens[index % pages.length];
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Visibility(
        visible: !showFloatButton,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: KSecondaryColor,
                dotColor: kGrey2Color,
                spacing: 2,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.bottomCenter,
                width: 290,
                child: MyButton(
                  mBottom: 30,
                  radius: 50,
                  buttonText: 'Get Started',
                  onTap: () {
                    onLastPage
                        ? Get.to(() => SplashScreen())
                        : controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
