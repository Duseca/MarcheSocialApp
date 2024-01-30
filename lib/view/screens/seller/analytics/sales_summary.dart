import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/seller/analytics/order_status_details.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/custom_drop_down.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/order_status_tile.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class SalesSummary extends StatelessWidget {
  const SalesSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context,
          title: 'Sales Summary',
          bgColor: kPrimaryColor,
          hasIcon: false,
          choiceicon: Icon(Icons.search)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              physics: const BouncingScrollPhysics(),
              children: [
                Row(
                  children: [
                    listTile(Assets.imagesDone, '24', 'Completed'),
                    listTile(Assets.imagesSnipped, '10', 'Shipped'),
                  ],
                ),
                Row(
                  children: [
                    listTile(Assets.imagesCancelled, '06', 'Cancelled'),
                    listTile(Assets.imagesProgress, '05', 'Prosessing'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      paddingTop: 10,
                      paddingLeft: 10,
                      text: 'Recent Orders',
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 150,
                      child: CustomDropDown(
                          radius: 10,
                          height: 30,
                          bannerwith: 150,
                          borderColor: kWhiteColor,
                          bgColor: kWhiteColor,
                          heading: '',
                          hint: 'Newest Order',
                          items: [
                            'Newest Orders',
                            'Processing',
                            'Completed',
                            'Shipped',
                            'Cancelled',
                            'All'
                          ],
                          onChanged: (Value) {}),
                    )
                  ],
                ),
                for (int i = 0; i <= 10; i++)
                  InkWell(
                    onTap: () {
                      Get.to(() => OrderStatusDetails());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OrderStatusTile(
                        leading: Assets.imagesShoe,
                        status: 'Cancelled',
                        subtitle: 'Order#1234',
                        title: 'Sneakers for men',
                        date: DateTime.now().subtract(
                          Duration(days: 21),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listTile(String leading, title, subtitle) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: rounded2(kWhiteColor),
        child: ListTile(
          leading: CommonImageView(
            imagePath: leading,
            height: 40,
          ),
          title: MyText(
            text: title,
            size: 24,
            weight: FontWeight.bold,
          ),
          titleAlignment: ListTileTitleAlignment.top,
          subtitle: MyText(
            text: subtitle,
            size: 16,
            weight: FontWeight.w200,
          ),
        ),
      ),
    ));
  }
}
