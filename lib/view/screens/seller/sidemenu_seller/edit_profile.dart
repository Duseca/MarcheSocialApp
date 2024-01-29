import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context, title: 'Profile', bgColor: kPrimaryColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: kBlueColor, width: 3),
                              shape: BoxShape.circle),
                          child: CommonImageView(
                            imagePath: Assets.imagesChatdummy,
                            height: 150,
                            width: 150,
                            radius: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            right: 10,
                            child: CommonImageView(
                              imagePath: Assets.imagesCam,
                              height: 30,
                            )),
                      ],
                    ),
                  ],
                ),
                MyText(
                  text: 'Name',
                  paddingBottom: 10,
                ),
                MyTextField(),
                MyText(
                  text: 'Phone Number',
                  paddingBottom: 10,
                ),
                MyTextField(
                  prefixIcon: CountryCodePicker(
                    showFlag: false,
                    showDropDownButton: true,
                  ),
                ),
                MyText(
                  text: 'Country',
                  paddingBottom: 10,
                ),
                MyTextField(),
                MyText(
                  text: 'City',
                  paddingBottom: 10,
                ),
                MyTextField(),
                MyText(
                  text: 'Address',
                  paddingBottom: 10,
                ),
                MyTextField(
                  hint: 'Enter your Address',
                ),
                MyText(
                  text: 'Bio',
                  paddingBottom: 10,
                ),
                MyTextField(
                  hint: '\nWrite about yourself',
                  maxLines: 5,
                ),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                  backgroundColor: kBlueColor,
                  buttonText: 'Update Profile',
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
