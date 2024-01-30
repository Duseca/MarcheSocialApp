import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class Reels extends StatefulWidget {
  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  int _currentIndex = 0;
  int _currentIndex1 = 0;
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
      _currentIndex1 = 0;
    });
  }

  final List<String> _tabs1 = [
    'Products',
    'Following',
  ];
  final List<String> _tabs = ['All', 'Bags', 'Dresses', 'Footwear', 'Bags'];
  final List<Widget> tabBarView = [
    //All(),
    Center(child: MyText(text: 'tab 1')),
    Center(child: MyText(text: 'tab 1')),
    Center(child: MyText(text: 'tab 1')),
    Center(child: MyText(text: 'tab 1')),
    Center(child: MyText(text: 'tab 1')),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return CommonImageView(
              imagePath: Assets.imagesScroll,
            );
          },
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40.87,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _tabs1.length,
                    (index) {
                      return GestureDetector(
                        onTap: () => _onTap(index),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 180),
                            height: Get.height,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                Center(
                                  child: MyText(
                                    text: _tabs1[index],
                                    size: 13,
                                    weight: FontWeight.w400,
                                    color: _currentIndex1 == index
                                        ? KSecondaryColor
                                        : kWhiteColor,
                                  ),
                                ),
                                _currentIndex1 == index
                                    ? Icon(
                                        Icons.circle,
                                        color: KSecondaryColor,
                                        size: 5,
                                      )
                                    : SizedBox.shrink()
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: List.generate(
                          _tabs.length,
                          (index) {
                            return GestureDetector(
                              onTap: () => _onTap(index),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 180),
                                  height: Get.height,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: _currentIndex == index
                                        ? KSecondaryColor
                                        : kWhiteColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Center(
                                      child: MyText(
                                        text: _tabs[index],
                                        size: 13,
                                        weight: FontWeight.w400,
                                        color: KTertiaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40.0, right: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CommonImageView(
                  imagePath: Assets.imagesGreentick,
                  height: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                CommonImageView(
                  imagePath: Assets.imagesCross,
                  height: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                CommonImageView(
                  imagePath: Assets.imagesShare1,
                  height: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                CommonImageView(
                  imagePath: Assets.imagesComments,
                  height: 40,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40.0, right: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ListTile(
                  leading: CommonImageView(
                      imagePath: Assets.imagesDummyproduct2,
                      height: 30,
                      width: 30,
                      radius: 200,
                      fit: BoxFit.cover),
                  titleAlignment: ListTileTitleAlignment.bottom,
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      children: [
                        MyText(
                          text: 'Jone Fisher',
                          color: kWhiteColor,
                          size: 16,
                          weight: FontWeight.w600,
                          paddingRight: 10,
                        ),
                        SizedBox(
                          width: 100,
                          height: 30,
                          child: MyButton(
                              onTap: () {}, radius: 50, buttonText: 'Follow'),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: MyText(
                    paddingLeft: 20,
                    text: 'Locked in a house together .... ',
                    color: kWhiteColor,
                  ),
                  subtitle: MyText(
                    paddingLeft: 20,
                    text: 'time #fyp #quarantine',
                    color: kWhiteColor,
                  ),
                  contentPadding: EdgeInsets.all(0),
                  trailing: SizedBox(
                    width: 100,
                    height: 30,
                    child: MyButton(
                      onTap: () {},
                      radius: 50,
                      buttonText: 'Visit',
                      backgroundColor: kWhiteColor.withOpacity(0.4),
                      fontColor: KTertiaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

        // You can add more overlay widgets here, such as a slider or other interactive elements.
      ],
    );
  }
}
