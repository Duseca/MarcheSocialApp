import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        context: context,
        title: 'Account',
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
                  size: 12,
                  text:
                      "Please state your reason for leaving us. Your Feedback help us to improve ourselves.",
                  paddingBottom: 20,
                  color: kGrayColor,
                ),
                MyTextField(
                  maxLines: 10,
                  filledColor: kWhiteColor,
                  bordercolor: kWhiteColor,
                  hint: '\nWrite your message',
                  marginBottom: 20,
                ),
                MyText(
                  text: 'Are you sure you want to Delete you account?',
                  size: 16,
                  weight: FontWeight.bold,
                  paddingBottom: 20,
                  textAlign: TextAlign.center,
                ),
                MyText(
                  size: 12,
                  textAlign: TextAlign.center,
                  text:
                      "If you delete your account you will not be able to retrieve your data again.",
                  paddingBottom: 20,
                  color: kGrayColor,
                ),
                Row(
                  children: [
                    Expanded(
                        child: MyButton(
                      onTap: () {},
                      buttonText: 'Cancel',
                      backgroundColor: kGrey2Color,
                      radius: 50,
                    )),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                        child: MyButton(
                      onTap: () {},
                      buttonText: 'Delete',
                      backgroundColor: kRedColor,
                      radius: 50,
                    ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
