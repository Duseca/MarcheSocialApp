import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/home/all.dart';
import 'package:marche_social_app/view/screens/sidemenu/drawer.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<String> _tabs = ['All', 'Bags', 'Dresses', 'Footwear', 'Bags'];
  final List<Widget> tabBarView = [
    All(),
    Center(child: MyText(text: 'tab 1')),
    Center(child: MyText(text: 'tab 1')),
    Center(child: MyText(text: 'tab 1')),
    Center(child: MyText(text: 'tab 1')),
  ];
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawermenu(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: AppSizes.DEFAULT,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    child: CommonImageView(
                      imagePath: Assets.imagesHamburgermenu,
                      height: 20,
                    ),
                  ),
                  Row(
                    children: [
                      CommonImageView(
                        imagePath: Assets.imagesWallet,
                        height: 22,
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
            Padding(
              padding: AppSizes.HORIZONTAL,
              child: Column(
                children: [
                  MyTextField(
                    prefixIcon: Icon(
                      Icons.search,
                      color: KTertiaryColor,
                    ),
                    hint: 'Search',
                  ),
                  Container(
                    height: 50,
                    decoration: rounded2(
                      KSecondaryColor.withOpacity(0.2),
                    ),
                    child: ListTile(
                      title: MyText(
                        text: 'Your Address',
                        size: 10,
                        weight: FontWeight.w400,
                      ),
                      subtitle: MyText(
                        text:
                            'House 05, Street 458, Sector G13/1, Islamabad, Pakistan',
                        size: 12,
                        paddingBottom: 10,
                      ),
                    ),
                  ),
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
                      children: List.generate(
                        _tabs.length,
                        (index) {
                          return Expanded(
                            child: GestureDetector(
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
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: IndexedStack(
              index: _currentIndex,
              children: tabBarView,
            )),
          ],
        ),
      ),
    );
  }
}
