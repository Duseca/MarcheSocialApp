import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/drawer.dart';
import 'package:marche_social_app/view/screens/sidemenu/orders/on_going.dart';
import 'package:marche_social_app/view/screens/sidemenu/orders/Completed.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  int _currentIndex = 0;

  final List<String> _tabs = [
    'On Going',
    'Completed',
  ];
  final List<Widget> tabBarView = [
    const OnGoing(),
    const Completed(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: simpleAppBar(
            context: context, title: 'My Orders', bgColor: kPrimaryColor),
        body: Column(
          children: [
            DefaultTabController(
              length: _tabs.length,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TabBar(
                      onTap: (val) {
                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      tabs: List.generate(
                          _tabs.length,
                          (index) => Tab(
                                text: _tabs[index],
                              )),
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(horizontal: 60),
                      labelColor: KSecondaryColor,
                      unselectedLabelColor: KTertiaryColor,
                      dividerHeight: 0,
                      tabAlignment: TabAlignment.start,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.OUTFit_DISPLAY),
                      unselectedLabelStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      physics: const BouncingScrollPhysics(),
                      dividerColor: kGrey8Color,
                      indicatorColor: KSecondaryColor,
                    ),
                  ],
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
