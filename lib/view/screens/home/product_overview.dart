import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/home/product_overview_tabs.dart';
import 'package:marche_social_app/view/widget/color_selector.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/product_gallery_image.dart';
import 'package:marche_social_app/view/widget/product_tile.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';
import 'package:marche_social_app/view/widget/size_selector.dart';
import 'package:marche_social_app/view/widget/star_rating.dart';

class ProductOverview extends StatelessWidget {
  const ProductOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context: context, title: '', bgColor: kPrimaryColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15),
              physics: const BouncingScrollPhysics(),
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 315, // Set a fixed height for the container
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount:
                              10, // Replace with the actual number of items
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ProductGalleryImage(
                                  index: index,
                                  path: Assets.imagesShoe,
                                ));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                MyText(
                  paddingLeft: 20,
                  text: 'New style versatile shoes',
                  size: 20,
                  paddingBottom: 20,
                  weight: FontWeight.w600,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    StarRating(rating: 4.5),
                    MyText(
                      text: '4.7',
                      paddingLeft: 10,
                      size: 14,
                      color: kRedColor,
                    ),
                    MyText(
                      text: '(682 Reviews)',
                      paddingLeft: 10,
                      color: kGrayColor,
                      size: 14,
                    )
                  ],
                ),
                Row(
                  children: [
                    MyText(
                      text: '€ 250',
                      size: 16,
                      weight: FontWeight.w600,
                      paddingLeft: 20,
                      paddingRight: 10,
                      color: kRedColor,
                    ),
                    MyText(
                      text: '€ 350',
                      paddingRight: 10,
                      color: kGrayColor,
                      size: 16,
                    ),
                    MyText(
                      text: '50% OFF',
                      paddingRight: 10,
                      size: 14,
                      color: kRedColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                MyText(
                  text: 'In Stock',
                  color: kGreenColor,
                  paddingLeft: 20,
                ),
                ColorSelector(
                  onSizeSelected: (selectedSize) {
                    // Do something with the selected size
                    print('Selected size: $selectedSize');
                  },
                ),
                SizeSelector(
                  onSizeSelected: (selectedSize) {
                    // Do something with the selected size
                    print('Selected size: $selectedSize');
                  },
                ),
                SizedBox(
                    height: Get.height * 0.65, child: ProductsOverviewTabs()),
                MyText(
                  paddingTop: 20,
                  paddingLeft: 20,
                  text: 'Related Products',
                  weight: FontWeight.bold,
                  paddingBottom: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [ProductTile(), ProductTile()],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: AppSizes.HORIZONTAL,
                        child: MyButton(
                          onTap: () {},
                          buttonText: 'Buy Now',
                          radius: 50,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: circle(kBlueColor, kBlueColor),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CommonImageView(
                          imagePath: Assets.imagesCart2,
                          height: 30,
                          width: 30,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: Get.width * 0.7,
                      decoration: roundedsr(kWhiteColor, 50),
                      height: 50,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CommonImageView(
                              imagePath: Assets.imagesGreentick,
                              height: 30,
                            ),
                            CommonImageView(
                              imagePath: Assets.imagesCross,
                              height: 30,
                            ),
                            CommonImageView(
                              imagePath: Assets.imagesShare2,
                              height: 30,
                            )
                          ]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
