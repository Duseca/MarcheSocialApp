import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/view/screens/seller/analytics/series.products.dart';
import 'package:marche_social_app/view/screens/seller/analytics/single_products.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  int _currentIndex = 0;

  final List<String> _tabs = [
    'Series',
    'Single',
  ];
  final List<Widget> tabBarView = [
    const SeriesProducts(),
    const SingleProducts(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: simpleAppBar(
            title: 'Products', context: context, bgColor: kPrimaryColor),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
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
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: List.generate(
                          _tabs.length,
                          (index) => Tab(
                                text: _tabs[index],
                              )),
                      isScrollable: false,
                      labelColor: KSecondaryColor,
                      unselectedLabelColor: KTertiaryColor,
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
