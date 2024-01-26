import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class TransanctionTile extends StatelessWidget {
  TransanctionTile(
      {super.key,
      required this.name,
      required this.date,
      required this.time,
      required this.isorder,
      required this.price});
  String name, date, time, price;
  bool isorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: rounded2(kWhiteColor),
      child: Row(children: [
        CommonImageView(
          imagePath: Assets.imagesDummyproduct,
          height: 40,
          width: 40,
          radius: 200,
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListTile(
                  titleAlignment: ListTileTitleAlignment.top,
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.all(0),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          MyText(text: name),
                        ],
                      ),
                      Row(
                        children: [
                          MyText(
                            text: '$date    |',
                            size: 10,
                            color: kGrayColor,
                          ),
                          MyText(
                            text: time,
                            size: 10,
                            color: kGrayColor,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      MyText(
                        text: '€ $price',
                        size: 16,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      MyText(
                        text: isorder == true ? 'Order' : 'Top Up',
                        size: 10,
                        paddingRight: 10,
                      ),
                      CommonImageView(
                        imagePath: isorder == true
                            ? Assets.imagesUp
                            : Assets.imagesDown,
                        height: 15,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
