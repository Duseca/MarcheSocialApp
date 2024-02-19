import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class ScrollCategorySelector extends StatefulWidget {
  String? selectcategory;
  List<String> category;
  ScrollCategorySelector(
      {Key? key, required this.category, required this.selectcategory})
      : super(key: key);

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<ScrollCategorySelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36, // Set a fixed height for the horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.category.length,
        itemBuilder: (context, index) {
          String day = widget.category[index];
          bool isSelected = widget.selectcategory == day;

          return InkWell(
            onTap: () {
              setState(() {
                if (widget.selectcategory == day) {
                  widget.selectcategory = null; // Deselect if already selected
                } else {
                  widget.selectcategory = day; // Select the tapped day
                }
              });
            },
            child: Container(
              width: 120,
              height: 30, // Define a fixed width for each item
              margin: EdgeInsets.symmetric(
                  horizontal: 4), // Add some spacing between items
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: isSelected ? KSecondaryColor : kWhiteColor,
                  width: 1.50,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: isSelected ? KSecondaryColor : kWhiteColor,
                ),
                alignment: Alignment.center,
                child: MyText(
                  text: day,
                  color: isSelected ? kPrimaryColor : kGrey5Color,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
