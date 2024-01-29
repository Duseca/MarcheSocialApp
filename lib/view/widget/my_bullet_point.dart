import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class MyBullet extends StatelessWidget {
  MyBullet({super.key, required this.point, required this.number});
  String point, number;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: number,
          paddingLeft: 25,
          paddingBottom: 40,
          paddingRight: 10,
        ),
        Expanded(
          child: MyText(
            text: point,
            size: 14,
            color: kGrey8Color,
            textOverflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
