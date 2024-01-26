import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class LanguagesSettings extends StatefulWidget {
  const LanguagesSettings({super.key});

  @override
  State<LanguagesSettings> createState() => _LanguagesSettingsState();
}

class _LanguagesSettingsState extends State<LanguagesSettings> {
  List<String> reasons = [
    'English',
    'Italian',
    'Friench',
    'Mandarin',
    'Russian',
    'Korean',
    'Maxican',
    'Spanish',
    'Bengali',
    'Indonesia',
    'Hindi'
  ];
  String? selectedLanguage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        context: context,
        title: 'Languages',
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
                  text: 'Suggested',
                  size: 10,
                  color: kGrayColor,
                ),
                SizedBox(
                    height: 200,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          final language = reasons[index];
                          return ListTile(
                            trailing: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(width: 4, color: kGrayColor),
                                    color: selectedLanguage == language
                                        ? kBlueColor
                                        : kGrayColor)),
                            contentPadding: EdgeInsets.all(0),
                            title: MyText(
                              text: language,
                              fontFamily: AppFonts.OUTFit_DISPLAY,
                            ),
                            onTap: () {
                              setState(() {
                                selectedLanguage = language;
                              });
                            },
                          );
                        })),
                MyText(
                  text: 'Other',
                  size: 10,
                  color: kGrayColor,
                ),
                SizedBox(
                    height: 500,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: reasons.length - 3,
                        itemBuilder: (context, index) {
                          final language = reasons[index + 3];
                          return ListTile(
                            trailing: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(width: 4, color: kGrayColor),
                                    color: selectedLanguage == language
                                        ? kBlueColor
                                        : kGrayColor)),
                            contentPadding: EdgeInsets.all(0),
                            title: MyText(
                              text: language,
                              fontFamily: AppFonts.OUTFit_DISPLAY,
                            ),
                            onTap: () {
                              setState(() {
                                selectedLanguage = language;
                              });
                            },
                          );
                        })),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
