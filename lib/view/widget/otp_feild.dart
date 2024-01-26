import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';

// ignore: must_be_immutable
class OtpFeild extends StatelessWidget {
  OtpFeild({
    Key? key,
    this.controller,
    this.hint,
    this.label,
    this.onChanged,
    this.isObSecure = false,
    this.marginBottom = 15.0,
    this.maxLines,
    this.isFilled = true,
    this.filledColor,
    this.hintColor,
    this.haveLabel = true,
    this.labelSize,
  }) : super(key: key);
  String? label, hint;

  TextEditingController? controller;
  ValueChanged<String>? onChanged;
  bool? isObSecure, haveLabel, isFilled;
  double? marginBottom;
  int? maxLines;
  double? labelSize;
  Color? filledColor, hintColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: marginBottom!),
      child: Column(
        children: [
          TextFormField(
            maxLines: maxLines ?? 1,
            controller: controller,
            onChanged: onChanged,
            textInputAction: TextInputAction.next,
            obscureText: isObSecure!,
            obscuringCharacter: '•',
            style: TextStyle(
              fontFamily: AppFonts.OUTFit_DISPLAY,
              fontSize: 18,
              color: KTertiaryColor,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              // filled: isFilled,
              // fillColor: filledColor ?? kTertiaryColor,
              hintText: hint,
              hintStyle: TextStyle(
                fontFamily: AppFonts.OUTFit_DISPLAY,
                fontSize: 18,
                color: kGrayColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kGrey3Color, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kGrey5Color, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
