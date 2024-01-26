import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class MessageTile extends StatelessWidget {
  MessageTile(
      {super.key,
      this.isonline,
      this.isread,
      required this.leading,
      required this.subtitle,
      required this.title});
  String leading, title, subtitle;
  bool? isonline;
  bool? isread;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CommonImageView(
            imagePath: leading,
            height: 50,
            width: 50,
            radius: 10,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 5,
            left: 5,
            child: Icon(
              Icons.circle,
              size: 8,
              color: isonline == true ? kGreenColor : kRedColor,
            ),
          )
        ],
      ),
      title: MyText(
        text: title,
        size: 12,
        weight: FontWeight.w500,
      ),
      subtitle: MyText(
        text: subtitle,
        color: kGrayColor,
        size: 10,
      ),
      trailing: isread == false
          ? Container(
              width: 20,
              height: 20,
              decoration: circle(kBlueColor, kBlueColor),
              child: Center(
                  child: MyText(
                text: '1',
                size: 10,
                weight: FontWeight.w600,
                color: kWhiteColor,
              )),
            )
          : null,
    );
  }
}
