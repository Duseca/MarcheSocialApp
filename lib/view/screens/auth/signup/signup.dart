import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/custom_check_box.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            children: [
              MyText(text: 'Sign up'),
              MyText(text: 'Please Enter your details to continue'),
              fieldLabel(),
              fieldLabel(),
              fieldLabel(),
              fieldLabel(),
              Row(
                children: [
                  CustomCheckBox(isActive: true, onTap: () {}),
                  MyText(text: 'I accept the terms and privacy policy')
                ],
              ),
              SizedBox(
                height: 30,
              ),
              MyButton(
                // Navigate here
                onTap: () {},
                buttonText: 'Register',
                fontSize: 16,
                fontColor: kWhiteColor,
                fontWeight: FontWeight.w500,
                backgroundColor: KSecondaryColor,
                radius: 50,
                height: 56,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: 'Already have an account?',
                    fontFamily: AppFonts.OUTFit_DISPLAY,
                    size: 14,
                  ),
                  MyText(
                    text: ' Log in',
                    fontFamily: AppFonts.OUTFit_DISPLAY,
                    size: 14,
                    color: KSecondaryColor,
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }

  Widget fieldLabel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [MyText(text: 'Email'), MyTextField()],
    );
  }
}
