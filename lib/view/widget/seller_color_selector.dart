import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class SellerColorSelector extends StatefulWidget {
  @override
  _SellerColorSelectorState createState() => _SellerColorSelectorState();
}

class _SellerColorSelectorState extends State<SellerColorSelector> {
  List<String> allColors = ['White', 'Black', 'Yellow', 'Green'];
  List<String> moreColors = ['Blue', 'Red', 'Orange', 'Purple'];
  List<String> selectedColors = [];

  void toggleColorSelection(String color) {
    setState(() {
      if (selectedColors.contains(color)) {
        selectedColors.remove(color);
      } else {
        selectedColors.add(color);
      }
    });
  }

  void addColor(String color) {
    setState(() {
      if (!allColors.contains(color)) {
        allColors.add(color);
        moreColors.remove(color); // Remove the color so it can't be added again
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String? dropdownValue;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 8.0,
            children: allColors
                .map((color) => InkWell(
                      onTap: () => toggleColorSelection(color),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: selectedColors.contains(color)
                                ? Colors.blue
                                : Colors.transparent,
                            border: Border.all(
                                color: selectedColors.contains(color)
                                    ? Colors.blue
                                    : Colors.grey),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            color,
                            style: TextStyle(
                              color: selectedColors.contains(color)
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
          DropdownButton<String>(
            hint: MyText(
              text: 'Add More',
              color: kBlueColor,
              paddingRight: 10,
              size: 14,
            ),
            value: dropdownValue,
            icon: const Icon(
              Icons.add,
              color: kBlueColor,
            ),
            iconSize: 24,
            dropdownColor: kWhiteColor,
            elevation: 2,
            style: const TextStyle(color: Colors.blue),
            underline: Container(
              height: 0,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue;
                if (newValue != null) {
                  addColor(newValue);
                }
              });
            },
            items: moreColors.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
