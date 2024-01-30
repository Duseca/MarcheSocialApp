import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/custom_drop_down.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: simpleAppBar(
            context: context, title: 'Search', bgColor: kPrimaryColor),
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
                CustomDropDown(
                  heading: '',
                  hint: 'Everyone',
                  items: [],
                  onChanged: (Value) {},
                  bgColor: kWhiteColor,
                )
              ]))
        ]));
  }
}
