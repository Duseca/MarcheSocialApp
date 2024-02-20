import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/view/screens/home/comments.dart';
import 'package:marche_social_app/view/screens/home/description.dart';
import 'package:marche_social_app/view/screens/home/product_reviews.dart';
import 'package:marche_social_app/view/screens/home/specs.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class ProductsOverviewTabs extends StatefulWidget {
  const ProductsOverviewTabs({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewTabs> createState() => _ProductsOverviewTabsState();
}

class _ProductsOverviewTabsState extends State<ProductsOverviewTabs> {
  int _currentIndex = 0;

  final List<String> _tabs = [
    'Description',
    'Specs',
    'Reviews',
    'Comments(100)'
  ];

  final List<Widget> tabBarView = [
    Description(),
    Specs(),
    Productreview(),
    Comments()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
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
                    tabs: List.generate(
                        _tabs.length,
                        (index) => Tab(
                              text: _tabs[index],
                            )),
                    isScrollable: false,
                    labelColor: KSecondaryColor,
                    unselectedLabelColor: KTertiaryColor,
                    padding: EdgeInsets.all(0),
                    indicatorPadding: EdgeInsets.symmetric(vertical: 10),
                    dividerHeight: 0,
                    labelStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppFonts.OUTFit_DISPLAY),
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    physics: const BouncingScrollPhysics(),
                    dividerColor: kGrey8Color,
                    indicatorWeight: 3,
                    labelPadding: EdgeInsets.all(0),
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
    );
  }
}
