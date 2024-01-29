import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/custom_drop_down.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class AddShippingAddress extends StatelessWidget {
  const AddShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: simpleAppBar(
        context: context,
        title: 'Shipping Address',
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
                    color: kGrayColor,
                    size: 10,
                    paddingBottom: 20,
                    text:
                        "Updating your shipping address is quick and easy! Ensure accurate delivery by providing your latest address details below. Double-check for any typos or missing information to guarantee a seamless delivery experience. Once you've made the necessary updates, simply save, and you're good to go. Need assistance? Feel free to reach out to our support team. Happy shopping!"),
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
                CustomDropDown(
                    heading: 'Country',
                    bgColor: kWhiteColor,
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
                  marginBottom: 20,
                ),
                MyButton(
                  buttonText: 'Update',
                  onTap: () {},
                  radius: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
