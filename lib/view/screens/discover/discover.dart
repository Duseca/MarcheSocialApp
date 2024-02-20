import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
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
import 'package:marche_social_app/view/widget/searchtile.dart';
import 'package:marche_social_app/view/widget/star_rating.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isSearchActive =
      false; // This flag will control the visibility of the search suggestions.
  final FocusNode _searchFocusNode = FocusNode();
  bool _isSearching = false;
  String _searchQuery = '';
  @override
  void initState() {
    super.initState();
    // Add listener to the search focus node
    _searchFocusNode.addListener(() {
      if (_searchFocusNode.hasFocus) {
        setState(() {
          _isSearchActive =
              true; // Show suggestions when the search bar is focused
        });
      } else {
        setState(() {
          _isSearchActive =
              false; // Hide suggestions when the search bar is not focused
        });
      }
    });
  }

  void _showSearchSuggestions(String query) {
    setState(() {
      _isSearching = query.isNotEmpty;
      _searchQuery = query;
    });
    if (query.contains("men's t-shirt")) {
      setState(() {
        _isSearching == true;
      });
    }
  }

  @override
  void dispose() {
    // Clean up the focus node when the widget is disposed.
    _searchFocusNode.dispose();
    super.dispose();
  }

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
                            focusNode:
                                _searchFocusNode, // Attach the focus node to the text field
                            onTap: () {
                              setState(() {
                                _isSearchActive =
                                    true; // Show suggestions when the text field is tapped
                              });
                            },
                            onChanged: (Value) {
                              _showSearchSuggestions(Value);
                            },
                            marginBottom: 0,
                            prefixIcon: Icon(
                              Icons.search,
                              color: KTertiaryColor,
                            ),
                            hint: 'Search',
                          ),
                        ),
                      ),
                      if (_isSearchActive == false)
                        if (_isSearching == false)
                          Row(
                            children: [
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
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height:
                                      100, // Set a fixed height for the container
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
                                            path: Assets.imagesDress,
                                            text: 'Dresses'),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyText(
                                paddingLeft: 20,
                                paddingBottom: 20,
                                text: 'Top Selling',
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height:
                                      235, // Set a fixed height for the container
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
                          Row(
                            children: [
                              MyText(
                                paddingLeft: 20,
                                paddingTop: 20,
                                paddingBottom: 20,
                                text: 'Suggested',
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height:
                                      235, // Set a fixed height for the container
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
                          Row(
                            children: [
                              MyText(
                                paddingLeft: 20,
                                paddingTop: 20,
                                paddingBottom: 20,
                                text: 'Single Products',
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height:
                                      235, // Set a fixed height for the container
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
                          Row(
                            children: [
                              MyText(
                                paddingLeft: 20,
                                paddingTop: 20,
                                paddingBottom: 20,
                                text: 'Other Products',
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height:
                                      235, // Set a fixed height for the container
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
                      // Show suggestions if user is typing
                      Visibility(
                        visible: _isSearchActive,
                        child: Container(
                          height: Get.height * 0.8,
                          color: kPrimaryColor,
                          child: ListView(
                            padding: AppSizes.DEFAULT,
                            shrinkWrap: true,
                            children: [
                              Container(
                                decoration:
                                    rounded2(KSecondaryColor.withOpacity(0.2)),
                                child: ListTile(
                                  title: MyText(
                                    text: 'Your Address',
                                    size: 10,
                                  ),
                                  subtitle: MyText(
                                      text:
                                          'House 05, Street 458, Sector G13/1, Islamabad, Pakistan'),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MyText(
                                    text: 'Recent Search',
                                    size: 16,
                                    weight: FontWeight.bold,
                                  ),
                                  MyText(
                                    text: 'Clear All',
                                    color: KSecondaryColor,
                                    weight: FontWeight.w300,
                                  )
                                ],
                              ),
                              MyText(
                                paddingTop: 10,
                                text: 'No recent Searches',
                                weight: FontWeight.w300,
                                textAlign: TextAlign.center,
                                paddingBottom: 20,
                              ),
                              MyText(
                                text: 'Suggestions',
                                size: 16,
                                weight: FontWeight.bold,
                              ),
                              MyText(
                                paddingTop: 10,
                                text: 'Shoes',
                                weight: FontWeight.w300,
                                paddingBottom: 10,
                                size: 14,
                              ),
                              MyText(
                                text: 'Alpine blure bag',
                                weight: FontWeight.w300,
                                paddingBottom: 10,
                                size: 14,
                              ),
                              MyText(
                                text: 'Casual shirt',
                                weight: FontWeight.w300,
                                paddingBottom: 10,
                                size: 14,
                              ),
                              MyText(
                                text: 'Silver watch',
                                weight: FontWeight.w300,
                                paddingBottom: 10,
                                size: 14,
                              ),
                              MyText(
                                text: 'Black nike shoes',
                                weight: FontWeight.w300,
                                paddingBottom: 10,
                                size: 14,
                              ),
                              MyText(
                                text: 'Golden ear rings',
                                weight: FontWeight.w300,
                                paddingBottom: 10,
                                size: 14,
                              ),
                              MyText(
                                text: 'Red lipstick',
                                weight: FontWeight.w300,
                                paddingBottom: 10,
                                size: 14,
                              )
                              // ... Build your search suggestion list items based on _searchQuery ...
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                          visible: _isSearching,
                          child: Container(
                              height: Get.height * 0.8,
                              color: kPrimaryColor,
                              child: ListView(
                                  padding: AppSizes.DEFAULT,
                                  shrinkWrap: true,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            MyText(
                                              text: 'Result for "Men Tshirt"',
                                              paddingRight: 10,
                                            ),
                                            MyText(
                                              text: '150 found',
                                              color: kGrayColor,
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _showBottomSheet(context);
                                          },
                                          child: CommonImageView(
                                            imagePath: Assets.imagesFilter2,
                                            height: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    for (int i = 0; i < 10; i++)
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4.0),
                                        child: SearchTile(),
                                      )
                                  ])))
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
      isScrollControlled: true,
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
                    //   paddingLeft: 20,
                    weight: FontWeight.bold,
                    text: 'Product type',
                    size: 16,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CategorySelector(
                  category: ['Single', 'Series'], selectcategory: 'Single'),
              Row(
                children: [
                  MyText(
                    paddingBottom: 20,
                    paddingTop: 10,
                    //   paddingLeft: 20,
                    weight: FontWeight.bold,
                    text: 'Category',
                    size: 16,
                  ),
                ],
              ),
              ScrollCategorySelector(category: [
                'Footwear',
                'Dresses',
                'Watches',
                'Jwellery',
              ], selectcategory: 'Footwear'),
              Row(
                children: [
                  MyText(
                    paddingBottom: 20,
                    paddingTop: 10,
                    //   paddingLeft: 20,
                    weight: FontWeight.bold,
                    text: 'Sort by',
                    size: 16,
                  ),
                ],
              ),
              CategorySelector(
                category: [
                  'Popularity',
                  'Newest',
                  'Oldest',
                  'Discount',
                  'High Price',
                  'Low Price',
                  'Review'
                ],
                selectcategory: 'Popularity',
                bordercolor: kGrayColor,
              ),
              Row(
                children: [
                  MyText(
                    paddingBottom: 20,
                    paddingTop: 10,
                    //   paddingLeft: 20,
                    weight: FontWeight.bold,
                    text: 'Price Range',
                    size: 16,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: MyTextField(
                      hint: 'Min price',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: MyTextField(
                      hint: 'Max Price',
                    ),
                  ),
                ],
              ),
              MyButton(onTap: () {}, buttonText: 'Apply Filter')
            ],
          ),
        );
      },
    );
  }
}
