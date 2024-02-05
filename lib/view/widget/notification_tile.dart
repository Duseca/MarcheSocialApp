import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class NotificationsTile extends StatelessWidget {
  NotificationsTile(
      {super.key,
      required this.path,
      required this.subtitle,
      required this.title,
      required this.trailing,
      this.tileColor});
  String path, title, subtitle;
  DateTime trailing;
  Color? tileColor;
  @override
  Widget build(BuildContext context) {
    String formattedTime = TimeOfDay.now().format(context);
    return Container(
      decoration: rounded2(tileColor ?? kWhiteColor.withOpacity(0.9)),
      child: ListTile(
        // leading: CommonImageView(
        //   imagePath: path,
        //   height: 50,
        // ),
        title: MyText(
          text: title,
          weight: FontWeight.w500,
        ),
        subtitle: MyText(
          text: subtitle,
          weight: FontWeight.w300,
          size: 10,
        ),
        trailing: MyText(text: formattedTime.toString()),
      ),
    );
  }
}
