import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';

class SendField extends StatelessWidget {
  SendField({
    Key? key,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonImageView(
          imagePath: Assets.imagesMic,
          height: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextFormField(
            controller: controller,
            onChanged: onChanged,
            cursorWidth: 1.0,
            style: TextStyle(
              fontSize: 12,
              color: KSecondaryColor,
            ),
            decoration: InputDecoration(
              suffixIcon: SizedBox(
                width: 60,
                child: Row(
                  children: [
                    CommonImageView(
                      imagePath: Assets.imagesCamera,
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CommonImageView(
                      imagePath: Assets.imagesCopy,
                      height: 20,
                    )
                  ],
                ),
              ),
              hintText: 'Message...',
              hintStyle: TextStyle(
                  fontSize: 12,
                  color: kGrey3Color,
                  fontFamily: AppFonts.OUTFit_DISPLAY),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              filled: true,
              fillColor: kWhiteColor,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 30,
          decoration: circle(KSecondaryColor, KSecondaryColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CommonImageView(
              imagePath: Assets.imagesSend,
              height: 20,
            ),
          ),
        )
        // Image.asset(
        //   Assets.mic,
        //   height: 20,
        //   color: kSecondaryColor,
        // ),
      ],
    );
  }
}
