import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class OrderStatusTile extends StatelessWidget {
  OrderStatusTile(
      {super.key,
      required this.leading,
      required this.status,
      required this.subtitle,
      required this.title,
      required this.date});
  String status, leading, title, subtitle;
  DateTime date;
  @override
  Widget build(BuildContext context) {
    Color fillcolor, fontColor;

    if (status == 'Completed') {
      fillcolor = KSecondaryColor.withOpacity(0.2);
      fontColor = KSecondaryColor;
    } else if (status == 'Pending') {
      fillcolor = kBlueColor.withOpacity(0.2);
      fontColor = kBlueColor;
    } else if (status == 'Cancelled') {
      fillcolor = kRedColor.withOpacity(0.2);
      fontColor = kRedColor;
    } else {
      fillcolor = kGreenColor.withOpacity(0.3);
      fontColor = kGreenColor;
    }
    return Container(
      height: 67,
      decoration: rounded2(kWhiteColor),
      child: Row(children: [
        Expanded(
            child: ListTile(
          leading: CommonImageView(
            height: 50,
            width: 50,
            imagePath: leading,
            radius: 10,
            fit: BoxFit.cover,
          ),
          title: MyText(
            text: title,
            weight: FontWeight.w500,
          ),
          subtitle: MyText(text: subtitle),
          trailing: SizedBox(
            width: 90,
            height: 30,
            child: MyButton(
              buttonText: status,
              onTap: () {},
              backgroundColor: fillcolor,
              fontColor: fontColor,
            ),
          ),
        )),
        CommonImageView(
          imagePath: Assets.imagesNext,
          height: 20,
        ),
        SizedBox(
          width: 10,
        )
      ]),
    );
  }
}
