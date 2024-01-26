import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/product_tile.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                MyText(
                    textAlign: TextAlign.justify,
                    color: kGrayColor,
                    paddingBottom: 20,
                    text:
                        "The ultimate footwear marvel: these shoes are a fusion of comfort and style, designed to elevate your every step! Crafted with premium, high-quality materials, these shoes offer a perfect blend of durability and elegance. The innovative design ensures a snug fit, providing unparalleled support for your feet. Whether you're strolling through the urban jungle or striding along nature's paths, these shoes are your ideal companion. With a sleek exterior and a cushioned interior, these shoes are more than just footwear—they're a statement piece. Step into the future of fashion and comfort with the se extraordinary shoes."),
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
