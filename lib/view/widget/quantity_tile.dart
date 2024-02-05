import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class QuantityTile extends StatelessWidget {
  QuantityTile(
      {super.key,
      required this.leading,
      required this.subtitle1,
      required this.subtitle2,
      required this.title,
      this.saved});
  String leading, title, subtitle1, subtitle2;
  bool? saved;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      secondaryActions: [
        IconSlideAction(
            caption: 'Delete',
            color: KSecondaryColor,
            onTap: () {},
            iconWidget: ImageIcon(
              AssetImage(
                Assets.imagesDelete,
              ),
              size: 20,
              color: kWhiteColor,
            )),
      ],
      child: Container(
        decoration: rounded(kWhiteColor),
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
                        subtitle: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                MyText(
                                  text: subtitle1,
                                  color: KTertiaryColor,
                                  size: 18,
                                  fontFamily: AppFonts.OSWALD,
                                  weight: FontWeight.w600,
                                ),
                                MyText(
                                  text: subtitle2,
                                  color: kGrey3Color,
                                  paddingLeft: 5,
                                  fontFamily: AppFonts.OSWALD,
                                  size: 14,
                                  weight: FontWeight.w600,
                                ),
                                MyText(
                                  text: 'In Stock',
                                  paddingLeft: 5,
                                  size: 10,
                                  color: kGreenColor,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                InputQty(
                                    decoration: const QtyDecorationProps(
                                        borderShape: BorderShapeBtn.circle,
                                        btnColor: kGrayColor,
                                        iconColor: KTertiaryColor,
                                        qtyStyle: QtyStyle.classic)),
                              ],
                            )
                          ],
                        ),
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0, right: 20),
                        child: CommonImageView(
                          imagePath: saved == true
                              ? Assets.imagesLike2
                              : Assets.imagesDelete,
                          height: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
