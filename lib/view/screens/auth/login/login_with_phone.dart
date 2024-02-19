import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/auth/signup/otp_code_verification.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class LoginwithPhone extends StatelessWidget {
  const LoginwithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context: context, title: '', bgColor: kPrimaryColor),
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: 'Login',
              size: 24,
              weight: FontWeight.w500,
              color: KTertiaryColor,
            ),
            MyText(
              text:
                  'Please enter your country code and enter your phone number.',
              size: 16,
              weight: FontWeight.w500,
              color: kQuarternaryColor,
            ),
            CountryCodePicker(
              showOnlyCountryWhenClosed: true,
              initialSelection: 'IT',
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: CountryCodePicker(
                    showDropDownButton: true,
                    showFlag: false,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kGrey2Color))),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: 'Sync Contacts',
                  size: 16,
                  weight: FontWeight.w300,
                  color: KTertiaryColor,
                ),
                Switch(
                    value: true,
                    activeTrackColor: kBlueColor,
                    onChanged: (value) {})
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: AppSizes.DEFAULT,
        child: MyButton(
          buttonText: 'Continue',
          onTap: () {
            Get.to(() => OTPVerification());
          },
          radius: 50,
        ),
      ),
    );
  }
}
