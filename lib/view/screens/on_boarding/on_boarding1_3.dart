import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class Onboarding1_3 extends StatelessWidget {
  const Onboarding1_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Center(
          child: MyText(
            text: 'Discover new products',
            size: 24,
            paddingLeft: 40,
            paddingRight: 40,
            weight: FontWeight.w600,
            textAlign: TextAlign.center,
            paddingBottom: 10,
          ),
        ),
        Center(
          child: MyText(
            paddingLeft: 40,
            paddingRight: 40,
            textAlign: TextAlign.center,
            text:
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
            color: kGrey5Color,
            paddingBottom: 80,
          ),
        ),
      ]),
    );
  }
}
