import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  MyButton({
    required this.onTap,
    required this.buttonText,
    this.height = 48,
    this.backgroundColor = KSecondaryColor,
    this.fontColor = kWhiteColor,
    this.fontSize = 16,
    this.outlineColor = kTransparentColor,
    this.radius = 8,
    this.svgIcon,
    this.haveSvg = false,
    this.choiceIcon,
    this.isleft,
    this.hasicon,
    this.mBottom = 0,
    this.mTop = 0,
    this.fontWeight = FontWeight.w600,
  });

  final String buttonText;
  final VoidCallback onTap;
  final double? height;
  final double radius;
  final double fontSize;
  final Color outlineColor;
  bool? hasicon, isleft;
  Widget? choiceIcon;
  final Color backgroundColor, fontColor;
  final String? svgIcon;
  final bool haveSvg;
  final double mTop, mBottom;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: mTop, bottom: mBottom),
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: outlineColor),
          // boxShadow: [
          //   BoxShadow(
          //     offset: Offset(0, 4),
          //     color: kPrimaryColor.withOpacity(0.25),
          //     blurRadius: 15,
          //     spreadRadius: 0,
          //   ),
          // ],
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Material(
          color: kTransparentColor,
          child: Row(
            mainAxisAlignment: isleft == true
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              hasicon == true
                  ? Padding(
                      padding: isleft == true
                          ? const EdgeInsets.only(left: 20.0)
                          : const EdgeInsets.only(left: 0),
                      child: choiceIcon ?? const SizedBox.shrink(),
                    )
                  : const SizedBox.shrink(),
              MyText(
                paddingLeft: (hasicon == true) ? 10 : 0,
                text: buttonText,
                size: fontSize,
                color: fontColor,
                weight: fontWeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
