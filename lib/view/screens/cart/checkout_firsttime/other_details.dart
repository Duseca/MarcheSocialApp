import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/custom_drop_down.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class OtherDetails extends StatelessWidget {
  const OtherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
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
                  text: 'To proceed kindly confirm your details',
                  textAlign: TextAlign.center,
                  paddingBottom: 20,
                  color: kGrey5Color,
                ),
                MyText(
                  text: 'Name',
                  paddingLeft: 5,
                  paddingBottom: 8,
                ),
                MyTextField(
                  hint: 'Enter your Name',
                ),
                MyText(
                  text: 'Address',
                  paddingTop: 10,
                  paddingLeft: 5,
                  paddingBottom: 8,
                ),
                MyTextField(
                  hint: 'Enter your address',
                ),
                MyText(
                  text: 'Additional Address (optional)',
                  paddingTop: 10,
                  paddingLeft: 5,
                  paddingBottom: 8,
                ),
                MyTextField(
                  hint: 'Enter another address (if any)',
                ),
                MyText(
                  text: 'Postal Code',
                  paddingTop: 10,
                  paddingLeft: 5,
                  paddingBottom: 8,
                ),
                MyTextField(
                  hint: 'Enter the postal code for your area',
                ),
                CustomDropDown(
                    heading: 'Country',
                    bgColor: kPrimaryColor,
                    hint: 'Select your country',
                    items: ['Pakistan', 'China'],
                    onChanged: (Value) {}),
                MyText(
                  text: 'City',
                  paddingTop: 10,
                  paddingLeft: 5,
                  paddingBottom: 8,
                ),
                MyTextField(
                  hint: 'Enter your city',
                ),
                MyText(
                  text: 'Phone number',
                  paddingTop: 10,
                  paddingLeft: 5,
                  paddingBottom: 8,
                ),
                MyTextField(
                  hint: '00 0000 0000',
                ),
                MyText(
                  text: 'Note (optional)',
                  paddingTop: 10,
                  paddingLeft: 5,
                  paddingBottom: 8,
                ),
                MyTextField(
                  maxLines: 7,
                  hint: '\nTell us more about the order',
                ),
                MyButton(
                  onTap: () {},
                  buttonText: 'Proceed to checkout',
                  radius: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
