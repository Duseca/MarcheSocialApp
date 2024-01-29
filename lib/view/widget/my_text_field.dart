import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField(
      {Key? key,
      this.controller,
      this.hint,
      this.bordercolor,
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
      this.suffixIcon,
      this.radius,
      this.prefixIcon})
      : super(key: key);
  String? label, hint;

  TextEditingController? controller;
  ValueChanged<String>? onChanged;
  bool? isObSecure, haveLabel, isFilled;
  double? marginBottom, radius;
  int? maxLines;
  double? labelSize;
  Color? filledColor, hintColor;
  Color? bordercolor;
  Widget? prefixIcon, suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: marginBottom!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            maxLines: maxLines ?? 1,
            controller: controller,
            onChanged: onChanged,
            textInputAction: TextInputAction.next,
            obscureText: isObSecure!,
            obscuringCharacter: '*',
            style: const TextStyle(
              fontFamily: AppFonts.OUTFit_DISPLAY,
              fontSize: 12,
              color: KTertiaryColor,
            ),
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              prefixIcon: prefixIcon,
              filled: isFilled,
              fillColor: filledColor ?? kWhiteColor,
              hintText: hint,
              hintStyle: const TextStyle(
                fontFamily: AppFonts.OUTFit_DISPLAY,
                fontSize: 12,
                color: kGrey7Color,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: bordercolor ?? kGrey3Color, width: 1.5),
                borderRadius: BorderRadius.circular(radius ?? 10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: KTertiaryColor, width: 1.5),
                borderRadius: BorderRadius.circular(radius ?? 10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
