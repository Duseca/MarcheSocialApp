import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        context: context,
        title: 'Terms and Conditions',
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
                  text: 'Marchè Social’s Terms & Conditions',
                  weight: FontWeight.w600,
                  paddingBottom: 5,
                ),
                MyText(
                  text:
                      'Welcome to Marchè Social! Before you dive into the exciting world of social connections, courses, and events, please take a moment to review our brief terms and conditions.',
                  color: kGrayColor,
                ),
                MyText(
                  text: '1. Acceptance of Terms:',
                  weight: FontWeight.w600,
                  paddingBottom: 5,
                ),
                MyText(
                  paddingBottom: 10,
                  text:
                      'By using the Marchè Social app, you agree to abide by these terms and conditions.',
                  color: kGrayColor,
                ),
                MyText(
                  text: '2. User Responsibilities: ',
                  weight: FontWeight.w600,
                  paddingBottom: 5,
                ),
                MyText(
                  paddingBottom: 10,
                  text:
                      'You are responsible for the content you post. Respect the community guidelines and ensure your contributions are lawful and respectful.',
                  color: kGrayColor,
                ),
                MyText(
                  text: '3. Privacy:',
                  weight: FontWeight.w600,
                  paddingBottom: 5,
                ),
                MyText(
                  paddingBottom: 10,
                  text:
                      'We value your privacy. Check out our Privacy Policy to understand how we collect, use, and protect your personal information.',
                  color: kGrayColor,
                ),
                MyText(
                  text: '4. Intellectual Property:',
                  weight: FontWeight.w600,
                  paddingBottom: 5,
                ),
                MyText(
                  text:
                      "Respect intellectual property rights. Don't infringe on copyrights or trademarks when posting content.",
                  color: kGrayColor,
                ),
                MyText(
                  text: '5. Prohibited Activities:',
                  weight: FontWeight.w600,
                  paddingBottom: 5,
                ),
                MyText(
                  text:
                      'Engaging in harmful activities, spam, or any form of abuse is not allowed. Be a positive force in our community',
                  color: kGrayColor,
                  paddingBottom: 10,
                ),
                MyText(
                  text: '6. Termination:',
                  weight: FontWeight.w600,
                  paddingBottom: 5,
                ),
                MyText(
                  text:
                      'We reserve the right to terminate accounts violating our terms without notice.',
                  color: kGrayColor,
                ),
                MyText(
                  text: '7. Updates:',
                  weight: FontWeight.w600,
                  paddingBottom: 5,
                ),
                MyText(
                  text:
                      "Terms may be updated; it's your responsibility to stay informed.",
                  color: kGrayColor,
                  paddingBottom: 20,
                ),
                MyText(
                  text:
                      "Thanks for being part of Marchè – let's create an amazing social experience together!",
                  color: kGrayColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
