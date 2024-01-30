import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/seller/orders/orders_list.dart';
import 'package:marche_social_app/view/screens/seller/sidemenu_seller/drawer.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/custom_drop_down.dart';
import 'package:marche_social_app/view/widget/main_bar.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/order_status_tile.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
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
              title: 'My Orders',
            ),
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                        width: 150,
                        child: CustomDropDown(
                            radius: 30,
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
                  SizedBox(
                    height: 16,
                  ),
                  MyTextField(
                    radius: 30,
                    bordercolor: kWhiteColor,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                      color: kGrayColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: OrdersList())
          ],
        ),
      ),
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
