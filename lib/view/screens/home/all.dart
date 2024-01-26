import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/home/product_overview.dart';
import 'package:marche_social_app/view/widget/categories_all.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/product_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  final categorycontroller = PageController(viewportFraction: 1.0);
  final controller =
      PageController(viewportFraction: 0.9); // Changed to 1.0 for full width
  final pages = List.generate(
      4,
      (index) => ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: CommonImageView(
              imagePath: Assets.imagesBanner,
              height: 144,
              fit: BoxFit.cover,
              radius: 20,
            ),
          ));
  final categorypages = List.generate(
      4,
      (index) => Padding(
            padding: AppSizes.HORIZONTAL,
            child: CategoriesAll(
              path: Assets.imagesBag,
              text: 'Name',
            ),
          ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 15),
                physics: const BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 144, // Adjust height as necessary
                    child: PageView.builder(
                      controller: controller,
                      itemBuilder: (_, index) {
                        return pages[index % pages.length];
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: pages.length,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: KSecondaryColor,
                        dotColor: kGrey2Color,
                        dotHeight: 7,
                        dotWidth: 7,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 219, // Adjust height as necessary
                    child: PageView.builder(
                      controller: categorycontroller,
                      itemBuilder: (_, index) {
                        return categorypages[index % pages.length];
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: categorycontroller,
                      count: categorypages.length,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: KSecondaryColor,
                        dotColor: kGrey2Color,
                        dotHeight: 7,
                        dotWidth: 7,
                      ),
                    ),
                  ),
                  MyText(
                    text: 'Trending Products',
                    size: 14,
                    weight: FontWeight.bold,
                    paddingBottom: 20,
                    paddingLeft: 20,
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
                              return InkWell(
                                  onTap: () {
                                    Get.to(() => ProductOverview());
                                  },
                                  child: ProductTile());
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  MyText(
                    paddingTop: 20,
                    text: 'Single Products',
                    size: 14,
                    weight: FontWeight.bold,
                    paddingBottom: 20,
                    paddingLeft: 20,
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
                ]),
          ),
        ],
      ),
    );
  }
}
