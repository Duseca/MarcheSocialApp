import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/drawer.dart';
import 'package:marche_social_app/view/widget/custom_drop_down.dart';
import 'package:marche_social_app/view/widget/main_bar.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/product_tile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
            MainBar(
              onmenuTap: () {
                scaffoldKey.currentState?.openDrawer();
              },
              title: 'Dashboard',
            ),
            Padding(
              padding: AppSizes.HORIZONTAL,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyText(
                        paddingTop: 10,
                        text: 'Products',
                        weight: FontWeight.bold,
                      ),
                      MyText(
                        text: '(344)',
                        paddingTop: 10,
                        color: kGrayColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 120,
                    child: CustomDropDown(
                        bgColor: kWhiteColor,
                        heading: '',
                        hint: 'Top Selling',
                        items: [
                          'Top Selling',
                          'Top Ratings',
                          'Recently added',
                          'Low Ratings'
                        ],
                        onChanged: (Value) {}),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: AppSizes.HORIZONTAL,
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      crossAxisSpacing: 2, // Adjust the spacing as needed
                      mainAxisSpacing: 0.6 // Adjust the spacing as needed
                      ),
                  itemCount: 10, // Replace with the actual number of items
                  itemBuilder: (context, index) {
                    return ProductTile(
                      isgrid: true,
                      haslike: false,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
