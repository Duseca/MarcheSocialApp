import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/seller/analytics/all_products.dart';
import 'package:marche_social_app/view/screens/seller/analytics/sales_summary.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/drawer.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/custom_drop_down.dart';
import 'package:marche_social_app/view/widget/line_chart.dart';
import 'package:marche_social_app/view/widget/main_bar.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Drawermenu(),
          key: scaffoldKey,
          body:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            MainBar(
              onmenuTap: () {
                scaffoldKey.currentState?.openDrawer();
              },
              title: 'Analytics',
            ),
            Expanded(
                child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    physics: const BouncingScrollPhysics(),
                    children: [
                  Padding(
                    padding: AppSizes.HORIZONTAL,
                    child: Column(
                      children: [
                        Container(
                          height: 86,
                          decoration: rounded2(kBlueColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ordersdata('135', 'Order'),
                              Padding(
                                padding: AppSizes.VERTICAL,
                                child: VerticalDivider(
                                  color: kWhiteColor,
                                ),
                              ),
                              ordersdata('Rs.78,050', 'Gross'),
                              Padding(
                                padding: AppSizes.VERTICAL,
                                child: VerticalDivider(
                                  color: kWhiteColor,
                                ),
                              ),
                              ordersdata('57', 'Pending')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 255,
                          decoration: rounded2(kBlueColor),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 10,
                                  left: 10,
                                  child: MyText(
                                    text: 'Total Sale',
                                    color: kWhiteColor,
                                    weight: FontWeight.w100,
                                  )),
                              Positioned(
                                  top: 30,
                                  left: 10,
                                  child: MyText(
                                    size: 20,
                                    text: 'Rs.10,0650',
                                    color: kWhiteColor,
                                    weight: FontWeight.w600,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, right: 10),
                                child: LineChart(
                                  sampleData1(),
                                ),
                              ),
                              Positioned(
                                  top: 10,
                                  right: 10,
                                  child: SizedBox(
                                    width: 100,
                                    child: CustomDropDown(
                                      hint: 'This Week',
                                      height: 36,
                                      hintcolor: kWhiteColor,
                                      heading: '',
                                      bgColor: kWhiteColor.withOpacity(0.3),
                                      borderColor: Colors.transparent,
                                      items: [],
                                      onChanged: (Value) {},
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () => Get.to(() => AllProducts()),
                                child: Container(
                                  height: 86,
                                  decoration: rounded2(kBlueColor),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          MyText(
                                            paddingLeft: 10,
                                            text: 'All Products',
                                            color: kWhiteColor,
                                            size: 18,
                                            weight: FontWeight.w600,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          MyText(
                                            paddingLeft: 10,
                                            text: '150',
                                            color: kWhiteColor,
                                            size: 22,
                                            weight: FontWeight.w600,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0),
                                            child: CommonImageView(
                                              imagePath: Assets.imagesGo,
                                              height: 25,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 23,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.to(() => SalesSummary());
                                },
                                child: Container(
                                  height: 86,
                                  decoration: rounded2(kBlueColor),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          MyText(
                                            paddingLeft: 10,
                                            text: 'Sales Summary',
                                            color: kWhiteColor,
                                            size: 18,
                                            weight: FontWeight.w600,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          MyText(
                                            paddingLeft: 10,
                                            text: '20+',
                                            color: kWhiteColor,
                                            size: 22,
                                            weight: FontWeight.w600,
                                          ),
                                          MyText(
                                            text: 'New Orders',
                                            size: 12,
                                            weight: FontWeight.w300,
                                            color: kWhiteColor,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0),
                                            child: CommonImageView(
                                              imagePath: Assets.imagesGo,
                                              height: 25,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 280,
                    decoration: rounded2(kWhiteColor),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: AppSizes.HORIZONTAL,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: 'Recent Orders',
                                  size: 22,
                                  weight: FontWeight.w600,
                                ),
                                MyText(
                                  paddingLeft: 10,
                                  text: 'View all',
                                  size: 16,
                                  color: kBlueColor,
                                  weight: FontWeight.w600,
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: AppSizes.HORIZONTAL,
                          child: Container(
                            height: 70,
                            decoration: rounded(kWhiteColor),
                            child: Center(
                              child: ListTile(
                                title: MyText(
                                  text: 'Order #23432',
                                  size: 18,
                                  weight: FontWeight.w600,
                                ),
                                subtitle: MyText(
                                  text: '12 Oct 2023  * Adidas Sneakers',
                                  size: 14,
                                  weight: FontWeight.w300,
                                ),
                                trailing: MyText(
                                  text: 'Rs 900',
                                  size: 16,
                                  color: kBlueColor,
                                  weight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]))
          ])),
    );
  }

  Widget ordersdata(title, subtitle) {
    return Expanded(
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        subtitle: Column(children: [
          MyText(
            text: title,
            size: 20,
            color: kWhiteColor,
            weight: FontWeight.w600,
          ),
          MyText(
            text: subtitle,
            size: 16,
            color: kWhiteColor,
            weight: FontWeight.w300,
          ),
        ]),
      ),
    );
  }
}
