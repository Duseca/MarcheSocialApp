import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/seller/notifications/activity.dart';
import 'package:marche_social_app/view/screens/seller/notifications/messages.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

import '../sidemenu_seller/drawer.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> _tabs = ['Activity', 'Messages'];
  final List<Widget> tabBarView = [
    Activity(),
    Messages(),
  ];
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
                  MyText(
                    text: 'Notifications',
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  CommonImageView(
                    imagePath: Assets.imagesHeart,
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: AppSizes.DEFAULT,
              child: Container(
                height: 50.87,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kWhiteColor),
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
                              duration: const Duration(milliseconds: 100),
                              height: Get.height,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _currentIndex == index
                                    ? kBlueColor
                                    : Colors.transparent,
                              ),
                              child: Center(
                                child: MyText(
                                  text: _tabs[index],
                                  size: 13,
                                  weight: FontWeight.w600,
                                  color: _currentIndex == index
                                      ? kWhiteColor
                                      : KTertiaryColor,
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
