import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/controller/onboarding2_controller.dart';
import 'package:marche_social_app/view/screens/auth/on_boarding/on_boarding1_1.dart';
import 'package:marche_social_app/view/screens/auth/on_boarding/on_boarding1_2.dart';
import 'package:marche_social_app/view/screens/auth/on_boarding/on_boarding1_3.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingController1 extends StatefulWidget {
  @override
  State<OnBoardingController1> createState() => _OnBoardingController1State();
}

class _OnBoardingController1State extends State<OnBoardingController1> {
  final PageController controller = PageController();

  bool onLastPage = false;

  final List<Widget> screens = [
    const Onboarding1_1(),
    const Onboarding1_2(),
    const Onboarding1_3()

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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
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
          SizedBox(
            height: 20,
          ),
          SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: const ExpandingDotsEffect(
              activeDotColor: kBlueColor,
              dotColor: kGrey2Color,
              dotHeight: 10,
              dotWidth: 10,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Visibility(
        visible: !showFloatButton,
        child: Column(
          children: [
            Expanded(
              child: Container(
                  alignment: Alignment.bottomCenter,
                  width: 290,
                  child: MyButton(
                    mBottom: 30,
                    buttonText: 'Get Started',
                    onTap: () {
                      onLastPage
                          ? Get.to(() => OnBoardingController2())
                          : controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
