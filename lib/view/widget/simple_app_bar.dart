import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

AppBar simpleAppBar({
  Color? bgColor,
  bool? hasIcon,
  Color? backiconColor,
  Widget? choiceicon,
  int selectedStep = 1,
  required BuildContext context,
  required String title,
}) {
  // Set the initial selected color

  return AppBar(
    backgroundColor: bgColor ?? kWhiteColor,
    elevation: 0.0,
    titleSpacing: 0.0,
    toolbarHeight: 70,
    leadingWidth: double.infinity,
    leading: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: CommonImageView(
                  imagePath: Assets.imagesBack,
                  height: 40,
                )),
          ],
        ),
        MyText(text: title),
        hasIcon == true
            ? const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: KTertiaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              )
            : Row(
                children: [
                  Container(
                    child: choiceicon ?? const Icon(null),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
      ],
    ),
  );
}

//