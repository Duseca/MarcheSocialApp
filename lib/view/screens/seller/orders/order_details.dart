import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/checkout_tile.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context,
          title: 'Sneaker order#12345',
          bgColor: kPrimaryColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                Checkouttile(
                  color: 'Black',
                  leading: Assets.imagesDummyproduct,
                  qty: '01',
                  size: '41',
                  subtitle1: '€ 270',
                  subtitle2: '  € 400',
                  title: 'Cocooil Body Oil',
                  checckstatus: true,
                  status: 'Completed',
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Date ordered',
                      weight: FontWeight.bold,
                    ),
                    MyText(text: '12 June 2023 12:12 AM')
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Deliver date',
                      weight: FontWeight.bold,
                    ),
                    MyText(text: '12 June 2023 12:12 AM')
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Cancellation date',
                      weight: FontWeight.bold,
                    ),
                    MyText(text: '12 June 2023 12:12 AM')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MyText(
                  text: 'Reason',
                  weight: FontWeight.bold,
                  paddingBottom: 16,
                ),
                Container(
                  decoration: rounded2(kWhiteColor),
                  height: 131,
                  child: MyText(
                      paddingLeft: 20,
                      paddingRight: 20,
                      paddingTop: 10,
                      textAlign: TextAlign.justify,
                      text:
                          'Figma ipsum component variant main layer. Distribute union move edit arrow line polygon. Project create effect inspect distribute star community. Inspect flatten inspect follower pencil community. Blur team blur pen create ellipse variant. Stroke prototype variant star connection. Text.'),
                ),
                MyText(
                  paddingTop: 16,
                  text: 'Buyer Profile',
                  weight: FontWeight.bold,
                  paddingBottom: 16,
                ),
                Container(
                  height: 174,
                  decoration: rounded2(kWhiteColor),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CommonImageView(
                          imagePath: Assets.imagesChatdummy3,
                          radius: 200,
                          height: 50,
                          width: 50,
                        ),
                        title: MyText(text: 'Christina Lebron'),
                        subtitle: MyText(
                          text: 'France  . Paris',
                          color: kGrayColor,
                        ),
                        trailing: SizedBox(
                            height: 35,
                            width: 85,
                            child: MyButton(
                              buttonText: 'Message',
                              radius: 50,
                              onTap: () {},
                            )),
                      ),
                      Padding(
                        padding: AppSizes.DEFAULT,
                        child: Container(
                          decoration: rounded2(kPrimaryColor),
                          height: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: ListTile(
                                      subtitle: Column(children: [
                                        MyText(text: 'Orders'),
                                        MyText(
                                          text: '04',
                                          textAlign: TextAlign.center,
                                          weight: FontWeight.bold,
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      subtitle: Column(children: [
                                        MyText(text: 'Recieved'),
                                        MyText(
                                          text: '03',
                                          textAlign: TextAlign.center,
                                          weight: FontWeight.bold,
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      subtitle: Column(children: [
                                        MyText(text: 'Cancelled'),
                                        MyText(
                                          text: '01',
                                          textAlign: TextAlign.center,
                                          weight: FontWeight.bold,
                                        ),
                                      ]),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
