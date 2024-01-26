import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/screens/review/review.dart';
import 'package:marche_social_app/view/screens/sidemenu/track_order.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/star_rating.dart';

// ignore: must_be_immutable
class Checkouttile extends StatelessWidget {
  Checkouttile(
      {super.key,
      required this.color,
      required this.leading,
      required this.qty,
      required this.size,
      required this.subtitle1,
      required this.subtitle2,
      required this.title,
      this.isongoing,
      this.iscompleted,
      this.hasbg,
      this.issingle});
  String leading, title, subtitle1, subtitle2, color, size, qty;
  bool? issingle, isongoing, iscompleted, hasbg;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Container(
            decoration: issingle == true
                ? hasbg == true
                    ? rounded(kWhiteColor)
                    : BoxDecoration()
                : rounded(kWhiteColor),
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonImageView(
                            imagePath: leading,
                            height: 99,
                            width: 99,
                            fit: BoxFit.contain,
                            radius: 10,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: ListTile(
                            titleAlignment: ListTileTitleAlignment.top,
                            title: MyText(
                              text: title,
                              size: 14,
                              paddingTop: 10,
                              weight: FontWeight.w500,
                            ),
                            subtitle: issingle == true
                                ? Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          StarRating(rating: 4),
                                          MyText(
                                            text: '  4.7  ',
                                            size: 10,
                                            color: kYellowColor,
                                          ),
                                          MyText(
                                            text: '(876)',
                                            size: 10,
                                            color: kGrey5Color,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          MyText(
                                            text: 'Color',
                                            size: 8,
                                            weight: FontWeight.w600,
                                          ),
                                          MyText(
                                            text: ' $color  |',
                                            size: 8,
                                            color: kGrey5Color,
                                            weight: FontWeight.w600,
                                          ),
                                          MyText(
                                            text: '  Size',
                                            size: 8,
                                            weight: FontWeight.w600,
                                          ),
                                          MyText(
                                            text: '  $size  ',
                                            size: 8,
                                            color: kGrey5Color,
                                            weight: FontWeight.w600,
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          MyText(
                                            text: subtitle1,
                                            color: kRedColor,
                                            size: 16,
                                            weight: FontWeight.w600,
                                          ),
                                          MyText(
                                            text: subtitle2,
                                            color: kGrey3Color,
                                            weight: FontWeight.w600,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          MyText(
                                            text: 'Color',
                                            size: 8,
                                            weight: FontWeight.w600,
                                          ),
                                          MyText(
                                            text: ' $color  |',
                                            size: 8,
                                            color: kGrey5Color,
                                            weight: FontWeight.w600,
                                          ),
                                          MyText(
                                            text: '  Size',
                                            size: 8,
                                            weight: FontWeight.w600,
                                          ),
                                          MyText(
                                            text: '  $size  |',
                                            size: 8,
                                            color: kGrey5Color,
                                            weight: FontWeight.w600,
                                          ),
                                          MyText(
                                            text: '  Qty',
                                            size: 8,
                                            weight: FontWeight.w600,
                                          ),
                                          MyText(
                                            text: '  $qty',
                                            size: 8,
                                            color: kGrey5Color,
                                            weight: FontWeight.w600,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                          )),
                      issingle == true
                          ? Row(
                              children: [
                                MyText(
                                  paddingTop: 50,
                                  textAlign: TextAlign.end,
                                  text: '€68',
                                  color: kRedColor,
                                  size: 16,
                                  weight: FontWeight.bold,
                                ),
                                MyText(
                                  paddingTop: 50,
                                  paddingRight: 10,
                                  textAlign: TextAlign.end,
                                  text: '€68',
                                  color: kGrayColor,
                                  size: 8,
                                ),
                              ],
                            )
                          : SizedBox.shrink()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        isongoing == true
            ? Positioned(
                bottom: 10,
                right: 10,
                child: InkWell(
                  onTap: () {
                    Get.to(() => TrackOrders());
                  },
                  child: Container(
                    decoration: rounded(KSecondaryColor),
                    width: 80,
                    height: 30,
                    child: Center(
                        child: MyText(
                      text: 'Track Order',
                      size: 10,
                      color: kWhiteColor,
                    )),
                  ),
                ))
            : Container(),
        iscompleted == true
            ? Positioned(
                bottom: 10,
                right: 10,
                child: InkWell(
                  onTap: () {
                    Get.to(() => Review());
                  },
                  child: Container(
                    decoration: rounded(KSecondaryColor),
                    width: 70,
                    height: 30,
                    child: Center(
                        child: MyText(
                      text: 'Review',
                      size: 10,
                      color: kWhiteColor,
                    )),
                  ),
                ))
            : Container()
      ],
    );
  }
}
