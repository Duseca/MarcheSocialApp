import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class GuestDetails extends StatelessWidget {
  const GuestDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: AppSizes.DEFAULT,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 19,
                  ),
                  Row(
                    children: [
                      CommonImageView(
                        imagePath: Assets.imagesWallet,
                        height: 20,
                      ),
                      MyText(
                        text: '115.34 €',
                        paddingLeft: 10,
                        paddingRight: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                physics: const BouncingScrollPhysics(),
                children: [
                  MyText(
                    text: 'Enter Details ',
                    weight: FontWeight.w600,
                    textAlign: TextAlign.center,
                    paddingBottom: 10,
                  ),
                  MyText(
                    textAlign: TextAlign.center,
                    text: 'Please enter your name and mobile number',
                    color: kGrey5Color,
                    paddingBottom: 20,
                  ),
                  MyText(text: 'Name'),
                  MyTextField(),
                  MyText(text: 'Phone'),
                  MyTextField(
                    prefixIcon: const CountryCodePicker(
                      padding: EdgeInsets.all(2),
                      onChanged: print,
                      initialSelection: 'UK',
                      showDropDownButton: true,
                      flagDecoration: BoxDecoration(shape: BoxShape.circle),
                      showFlag: false,
                      favorite: ['+39', 'FR'],
                      showCountryOnly: false,
                      textStyle: TextStyle(color: KTertiaryColor),
                      showOnlyCountryWhenClosed: false,
                      alignLeft: false,
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  MyButton(
                    onTap: () {},
                    buttonText: 'Continue',
                    radius: 50,
                  ),
                  MyText(
                    text: 'Cancel',
                    paddingTop: 12,
                    textAlign: TextAlign.center,
                    color: kBlueColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
