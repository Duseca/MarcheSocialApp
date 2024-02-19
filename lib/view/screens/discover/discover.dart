import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/sidemenu/drawer.dart';
import 'package:marche_social_app/view/widget/category_selector.dart';
import 'package:marche_social_app/view/widget/circle_category.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/product_tile.dart';
import 'package:marche_social_app/view/widget/scrollable_category_selector.dart';

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
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: AppSizes.HORIZONTAL,
                          child: MyTextField(
                            marginBottom: 0,
                            prefixIcon: Icon(
                              Icons.search,
                              color: KTertiaryColor,
                            ),
                            hint: 'Search',
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _showBottomSheet(context);
                        },
                        child: CommonImageView(
                          imagePath: Assets.imagesFilter,
                          height: 45,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
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
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ProductTile(),
                              );
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
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ProductTile(),
                              );
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
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ProductTile(),
                              );
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
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ProductTile(),
                              );
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

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                decoration: rounded2(kGrey7Color),
                height: 5,
                width: 50,
              ),
              const SizedBox(height: 10),
              MyText(
                text: 'Filter',
                size: 24,
                weight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  MyText(
                    paddingLeft: 20,
                    text: 'Product type',
                    size: 16,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CategorySelector(
                  category: ['Single', 'Series'], selectcategory: 'Single'),
              ScrollCategorySelector(category: [
                'Single',
                'Series',
                'Single',
                'Series',
                'Single',
                'Series'
              ], selectcategory: 'Single'),
              CategorySelector(category: [
                'Single',
                'Series',
                'Single',
                'Series',
                'Single',
                'Series'
              ], selectcategory: 'Single'),
            ],
          ),
        );
      },
    );
  }
}
