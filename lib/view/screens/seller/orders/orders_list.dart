import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/screens/seller/orders/order_details.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/notification_tile.dart';
import 'package:marche_social_app/view/widget/order_status_tile.dart';

class OrdersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<OrderStatusTile> orders = [
      OrderStatusTile(
        leading: Assets.imagesShoe,
        status: 'Completed',
        subtitle: 'Order#12345',
        title: 'Sneakers',
        date: DateTime.now().subtract(
          Duration(days: 2),
        ),
      ),
      OrderStatusTile(
        leading: Assets.imagesWhiteshoe,
        status: 'Cancelled',
        subtitle: 'Order#12345',
        title: 'Sneakers',
        date: DateTime.now().subtract(
          Duration(days: 21),
        ),
      ),
      OrderStatusTile(
        leading: Assets.imagesShoe2,
        status: 'Delivered',
        subtitle: 'Order#12345',
        title: 'Sneakers',
        date: DateTime.now().subtract(
          Duration(days: 11),
        ),
      )
    ];

    List<OrderStatusTile> last7DaysLinks = orders
        .where((item) => DateTime.now().difference(item.date).inDays <= 7)
        .toList();

    List<OrderStatusTile> lastMonthLinks = orders
        .where((item) => DateTime.now().difference(item.date).inDays > 7)
        .toList();

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: AppSizes.DEFAULT,
        shrinkWrap: true,
        children: [
          MyText(
            text: 'Today',
            textAlign: TextAlign.center,
            color: kGrayColor,
            paddingBottom: 10,
          ),
          ...last7DaysLinks.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: InkWell(
                onTap: () {
                  Get.to(() => OrderDetails());
                },
                child: OrderStatusTile(
                  leading: item.leading,
                  status: item.status,
                  subtitle: item.subtitle,
                  title: item.title,
                  date: DateTime.now().subtract(
                    Duration(days: 21),
                  ),
                ),
              ),
            ),
          ),
          MyText(
            paddingTop: 10,
            text: 'Yesterday',
            textAlign: TextAlign.center,
            color: kGrayColor,
            paddingBottom: 10,
          ),
          ...lastMonthLinks.map((item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: OrderStatusTile(
                  leading: item.leading,
                  status: item.status,
                  subtitle: item.subtitle,
                  title: item.title,
                  date: DateTime.now().subtract(
                    Duration(days: 21),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
