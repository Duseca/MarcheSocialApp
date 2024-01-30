import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/sidemenu/drawer.dart';
import 'package:marche_social_app/view/widget/circle_category.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/product_tile.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
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
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: AppSizes.HORIZONTAL,
                    child: MyTextField(
                      prefixIcon: Icon(
                        Icons.search,
                        color: KTertiaryColor,
                      ),
                      hint: 'Search',
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 100, // Set a fixed height for the container
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemCount:
                                10, // Replace with the actual number of items
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: CircleCategory(
                                    path: Assets.imagesDress, text: 'Dresses'),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  MyText(
                    paddingLeft: 20,
                    paddingBottom: 20,
                    text: 'Top Selling',
                    weight: FontWeight.bold,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 235, // Set a fixed height for the container
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemCount:
                                10, // Replace with the actual number of items
                            itemBuilder: (context, index) {
                              return ProductTile();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  MyText(
                    paddingLeft: 20,
                    paddingTop: 20,
                    paddingBottom: 20,
                    text: 'Suggested',
                    weight: FontWeight.bold,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 235, // Set a fixed height for the container
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemCount:
                                10, // Replace with the actual number of items
                            itemBuilder: (context, index) {
                              return ProductTile();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  MyText(
                    paddingLeft: 20,
                    paddingTop: 20,
                    paddingBottom: 20,
                    text: 'Single Products',
                    weight: FontWeight.bold,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 235, // Set a fixed height for the container
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemCount:
                                10, // Replace with the actual number of items
                            itemBuilder: (context, index) {
                              return ProductTile();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  MyText(
                    paddingLeft: 20,
                    paddingTop: 20,
                    paddingBottom: 20,
                    text: 'Other Products',
                    weight: FontWeight.bold,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 235, // Set a fixed height for the container
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemCount:
                                10, // Replace with the actual number of items
                            itemBuilder: (context, index) {
                              return ProductTile();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
