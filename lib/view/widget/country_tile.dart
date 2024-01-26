import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class CountryTile extends StatelessWidget {
  final String countryName;
  final String path;
  final bool isSelected;
  final Function() onSelect;

  CountryTile({
    required this.countryName,
    required this.path,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect();
      },
      child: Container(
        decoration:
            rounded3(kPrimaryColor, isSelected ? kGrey3Color : kPrimaryColor),
        child: ListTile(
          leading: CommonImageView(
            imagePath: path,
            height: 30,
            width: 30,
          ),
          title: MyText(
            text: countryName,
          ),
          trailing: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? KTertiaryColor : Colors.transparent,
              ),
              child: isSelected
                  ? Icon(
                      Icons.check,
                      color: kPrimaryColor,
                      size: 15,
                    )
                  : null),
        ),
      ),
    );
  }
}

class CountrySelector extends StatefulWidget {
  @override
  _CountrySelectorState createState() => _CountrySelectorState();
}

class _CountrySelectorState extends State<CountrySelector> {
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CountryTile(
          countryName: 'UK',
          path: Assets.imagesUk,
          isSelected: selectedCountry == 'UK',
          onSelect: () {
            updateSelection('UK');
          },
        ),
        CountryTile(
          countryName: 'Italian',
          path: Assets.imagesItalian,
          isSelected: selectedCountry == 'It',
          onSelect: () {
            updateSelection('It');
          },
        ),
        // Add more CountryTile widgets for other countries as needed
      ],
    );
  }

  void updateSelection(String countryCode) {
    setState(() {
      if (selectedCountry == countryCode) {
        selectedCountry = null; // Deselect if already selected
      } else {
        selectedCountry = countryCode; // Select the new country
      }
    });
  }
}
