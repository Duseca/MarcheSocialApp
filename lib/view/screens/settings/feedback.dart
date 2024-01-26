import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class Feedbackk extends StatelessWidget {
  const Feedbackk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        context: context,
        title: 'Feedback',
        bgColor: kPrimaryColor,
      ),
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
                  text: 'MMarchè App Feedback',
                  weight: FontWeight.w600,
                  paddingBottom: 5,
                ),
                MyText(
                  size: 12,
                  text:
                      "We value your thoughts! Share your experience with the Marchè Social app by providing feedback. Whether it's a suggestion for improvement, a feature you love, or a challenge you've encountered, your insights matter. Your feedback helps us enhance our user experience  journey. Together, let's make Partner even better!",
                  paddingBottom: 20,
                  color: kGrayColor,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: AppSizes.DEFAULT,
        child: MyButton(
          buttonText: 'Give feedback at Email',
          onTap: () {},
          radius: 50,
        ),
      ),
    );
  }
}
