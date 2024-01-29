import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatelessWidget {
  CustomDropDown(
      {super.key,
      required this.heading,
      required this.hint,
      required this.items,
      this.selectedValue,
      required this.onChanged,
      this.bgColor,
      this.radius,
      this.width,
      this.bannerwith,
      this.height,
      this.borderColor});

  final List<dynamic>? items;
  String? selectedValue;
  final ValueChanged<dynamic>? onChanged;
  String heading, hint;
  Color? bgColor, borderColor;
  double? radius, width, bannerwith, height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // MyText(
        //   text: heading,
        //   size: 12,
        //   paddingBottom: 8,
        // ),
        SizedBox(
          height: height ?? 45,
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              items: items!
                  .map(
                    (item) => DropdownMenuItem<dynamic>(
                      value: item,
                      child: MyText(
                        text: item,
                        color: KTertiaryColor,
                        size: 14,
                      ),
                    ),
                  )
                  .toList(),
              value: selectedValue,
              onChanged: onChanged,
              // icon: Image.asset(
              //   Assets.imagesArrowDown,
              //   height: 24,
              // ),
              hint: MyText(
                text: hint,
                size: 12,
                color: kGrey3Color,
              ),
              isDense: true,
              isExpanded: true,
              buttonHeight: 36,
              buttonPadding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              buttonDecoration: BoxDecoration(
                border: Border.all(
                  color: borderColor ?? kGrey3Color,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(radius ?? 8.0),
                color: bgColor ?? KTertiaryColor,
              ),
              buttonElevation: 0,
              itemHeight: 35,
              itemPadding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              dropdownMaxHeight: double.infinity,
              dropdownWidth: bannerwith ?? 120,
              dropdownPadding: null,
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: kWhiteColor,
              ),
              dropdownElevation: 4,
              scrollbarRadius: const Radius.circular(40),
              scrollbarThickness: 6,
              scrollbarAlwaysShow: true,
              offset: const Offset(-2, -5),
            ),
          ),
        ),
      ],
    );
  }
}
