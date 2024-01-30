import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/custom_drop_down.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class FollowPublicContect extends StatelessWidget {
  const FollowPublicContect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: simpleAppBar(
            context: context,
            title: 'Followers & Public Content',
            bgColor: kPrimaryColor),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
              child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  physics: const BouncingScrollPhysics(),
                  children: [
                MyText(
                  text:
                      'Customize your Search  settings so that only people you allow will be able to search you.',
                  color: kGrey5Color,
                  paddingBottom: 20,
                ),
                MyText(
                  text: 'Who can follow me',
                  paddingBottom: 10,
                  paddingTop: 10,
                ),
                CustomDropDown(
                  width: Get.width,
                  bannerwith: Get.width * 0.88,
                  heading: '',
                  hint: 'Everyone',
                  items: [
                    'Everyone',
                    'Followers',
                    'Following',
                    'Followers & Following'
                  ],
                  onChanged: (Value) {},
                  bgColor: kWhiteColor,
                ),
                MyText(
                  text: 'Who can see my followers',
                  paddingBottom: 10,
                  paddingTop: 10,
                ),
                CustomDropDown(
                  bannerwith: Get.width * 0.88,
                  heading: '',
                  hint: 'Everyone',
                  items: [
                    'Everyone',
                    'Followers',
                    'Following',
                    'Followers & Following'
                  ],
                  onChanged: (Value) {},
                  bgColor: kWhiteColor,
                ),
                MyText(
                  text: 'Who can see my following',
                  paddingBottom: 10,
                  paddingTop: 10,
                ),
                CustomDropDown(
                  heading: '',
                  bannerwith: Get.width * 0.88,
                  hint: 'Everyone',
                  items: [
                    'Everyone',
                    'Followers',
                    'Following',
                    'Followers & Following'
                  ],
                  onChanged: (Value) {},
                  bgColor: kWhiteColor,
                ),
              ]))
        ]));
  }
}
