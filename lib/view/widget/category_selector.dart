import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class CategorySelector extends StatefulWidget {
  String? selectcategory;
  Color? bordercolor;
  List<String> category;
  CategorySelector(
      {Key? key,
      required this.category,
      required this.selectcategory,
      this.bordercolor})
      : super(key: key);

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    return Center(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 4,
        physics: BouncingScrollPhysics(),
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: mqh * 0.5 / 180,
        children: List.generate(
          widget.category.length,
          (index) {
            String day = widget.category[index];
            bool isSelected = widget.selectcategory == day;

            return InkWell(
              onTap: () {
                setState(() {
                  if (widget.selectcategory == day) {
                    widget.selectcategory =
                        null; // Deselect if already selected
                  } else {
                    widget.selectcategory = day; // Select the tapped day
                  }
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 36,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: isSelected
                            ? KSecondaryColor
                            : widget.bordercolor ?? kWhiteColor,
                        width: 1.50,
                      ),
                    ),
                    child: Container(
                      width: 5,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: isSelected ? KSecondaryColor : kWhiteColor,
                      ),
                      child: Center(
                        child: MyText(
                          text: day,
                          color: isSelected ? kPrimaryColor : KTertiaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
