import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        context: context,
        title: 'Lucas Shoe Store',
        bgColor: kPrimaryColor,
        hasIcon: false,
        choiceicon: PopupMenuButton(
            position: PopupMenuPosition.under,
            color: kWhiteColor,
            surfaceTintColor: kWhiteColor,
            padding: EdgeInsets.all(0),
            itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                      onTap: () {
                        // Get.to(() => EditProfile());
                      },
                      padding: EdgeInsets.all(2),
                      child: Center(
                        child: MyText(
                          text: 'Share',
                          size: 12,
                        ),
                      )),
                  PopupMenuItem(
                      onTap: () {
                        //  Get.to(() => ProfileSettings());
                      },
                      child: Center(
                        child: MyText(
                          text: 'Go Offline',
                          size: 12,
                        ),
                      )),
                  PopupMenuItem(
                      child: Center(
                    child: MyText(
                      text: 'Edit',
                      size: 12,
                    ),
                  )),
                  PopupMenuItem(
                      child: Center(
                    child: MyText(
                      text: 'Delete',
                      color: kRedColor,
                      size: 12,
                    ),
                  )),
                ]),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  height: 174,
                  decoration: rounded2(kWhiteColor),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CommonImageView(
                          imagePath: Assets.imagesDummyproduct2,
                          radius: 200,
                          height: 50,
                          width: 50,
                        ),
                        title: MyText(text: 'Al’ Ahmed Electronic Store'),
                        subtitle: MyText(
                          text: 'France  . Paris',
                          color: kGrayColor,
                        ),
                        trailing: SizedBox(
                            height: 35,
                            width: 75,
                            child: MyButton(
                              buttonText: 'Follow',
                              radius: 50,
                              backgroundColor: kBlueColor,
                              onTap: () {},
                            )),
                      ),
                      Padding(
                        padding: AppSizes.DEFAULT,
                        child: Container(
                          decoration: rounded2(kPrimaryColor),
                          height: 70,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    MyText(text: 'Total Products'),
                                    MyText(text: 'Positive Rating'),
                                    MyText(text: 'Followers'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    MyText(
                                      text: '108',
                                      weight: FontWeight.bold,
                                    ),
                                    MyText(
                                      text: '95%(450)',
                                      weight: FontWeight.bold,
                                    ),
                                    MyText(
                                      text: '1.1k',
                                      weight: FontWeight.bold,
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                MyText(
                  paddingTop: 20,
                  text: 'Category',
                  weight: FontWeight.bold,
                ),
                Row(
                  children: [
                    MyText(
                      text: '* Shoes',
                      paddingRight: 10,
                    ),
                    MyText(
                      text: '* Sneakers',
                      paddingRight: 10,
                    ),
                    MyText(text: '* Sandals'),
                  ],
                ),
                MyText(
                  text: 'Website',
                  weight: FontWeight.bold,
                  paddingTop: 20,
                ),
                MyText(
                  text: 'https:/www.lucanstores.com',
                  color: kBlueColor,
                ),
                MyText(
                  text: 'About',
                  weight: FontWeight.bold,
                  paddingTop: 20,
                ),
                MyText(
                  color: kGrayColor,
                  text:
                      'Lorem ipsum dolor sit amet consectetur. Vel egestas at nisi cursus sed malesuada vel. Volutpat accumsan nunc massa pharetra cursus cursus turpis. Massa nunc suscipit nulla viverra. Eu augue mauris ultrices adipiscing at et erat volutpat sed. Risus leo curabitur dignissim malesuada quis vulputate ut faucibus. Semper nibh et quis morbi sit. Eleifend fringilla tincidunt proin neque. Eros pulvinar facilisis facilisis viverra at enim. Tellus massa ac lectus mauris vel mattis risus vitae. Faucibus auctor commodo convallis tellus amet sed.Lorem interdum vel viverra ornare varius mi. In orci iaculis.',
                ),
                MyText(
                  text: 'Products',
                  weight: FontWeight.bold,
                  paddingTop: 20,
                  paddingBottom: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 231,
                      decoration: roundedr(kWhiteColor, 8),
                      width: 162,
                      child: Column(children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: CommonImageView(
                            imagePath: Assets.imagesShoe3,
                            height: 105,
                            width: 137,
                            fit: BoxFit.cover,
                            radius: 4,
                          ),
                        )),
                        Container(
                          height: 87.69,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                MyText(
                                  text: 'Adidas white sneakers for men',
                                  weight: FontWeight.bold,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        MyText(
                                          text: '€68',
                                          size: 14,
                                          weight: FontWeight.bold,
                                        ),
                                        MyText(
                                          text: '€80',
                                          paddingLeft: 10,
                                          size: 14,
                                          color: kGrayColor,
                                        ),
                                        MyText(
                                          text: '50% OFF',
                                          paddingLeft: 10,
                                          size: 14,
                                          color: kRedColor,
                                        ),
                                      ],
                                    ),
                                    Container()
                                  ],
                                ),
                                Row(
                                  children: [
                                    CommonImageView(
                                      imagePath: Assets.imagesStar2,
                                      height: 15,
                                    ),
                                    MyText(text: '  4.8'),
                                    MyText(
                                      text: '  (692)',
                                      size: 10,
                                      color: kGrayColor,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
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
