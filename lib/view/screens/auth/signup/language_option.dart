import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/country_tile.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context: context, title: ''),
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: 'Choose the language',
              size: 24,
              weight: FontWeight.w500,
              color: KTertiaryColor,
            ),
            SizedBox(
              height: 40,
            ),
            MyText(
              text:
                  'Don’t worry! It happens. Please enter the email associated with your account.',
              weight: FontWeight.w500,
              color: kQuarternaryColor,
            ),
            CountrySelector(),
            SizedBox(
              height: 20,
            ),
            Spacer(),
            MyButton(
                buttonText: 'Continue',
                onTap: () {},
                mBottom: 30,
                backgroundColor: KSecondaryColor,
                fontColor: kWhiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                radius: 40),
          ],
        ),
      ),
    );
  }
}
