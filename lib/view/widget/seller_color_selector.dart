import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';

class ColorSelectorWidget extends StatefulWidget {
  @override
  _ColorSelectorWidgetState createState() => _ColorSelectorWidgetState();
}

class _ColorSelectorWidgetState extends State<ColorSelectorWidget> {
  List<ColorData>?
      selectedColors; // Use a List<ColorData>? to store multiple selections
  List<ColorData> defaultColors = [
    ColorData(name: 'White', color: Colors.white),
    ColorData(name: 'Blue', color: Colors.blue),
    ColorData(name: 'Black', color: Colors.black),
    ColorData(name: 'Red', color: Colors.red),
  ];

  List<ColorData> moreColors = [
    ColorData(name: 'Cyan', color: Colors.cyan),
    ColorData(name: 'Teal', color: Colors.teal),
    ColorData(name: 'Amber', color: Colors.amber),
    ColorData(name: 'Indigo', color: Colors.indigo),
    ColorData(name: 'Deep Purple', color: Colors.deepPurple),
    ColorData(name: 'Green', color: Colors.green),
    ColorData(name: 'Yellow', color: Colors.yellow),
    ColorData(name: 'Orange', color: Colors.orange),
    ColorData(name: 'Purple', color: Colors.purple),
    ColorData(name: 'Pink', color: Colors.pink),
    ColorData(name: 'Brown', color: Colors.brown),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Selected Colors',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            ...defaultColors.map((colorData) => buildColorBox(colorData)),
            ...selectedColors?.map((colorData) => buildColorBox(colorData)) ??
                [],
          ],
        ),
        buildAddMoreDropdown(),
      ],
    );
  }

  Widget buildColorBox(ColorData colorData) {
    bool isSelected = selectedColors?.contains(colorData) ?? false;
    return GestureDetector(
      onTap: () {
        toggleColorSelection(colorData);
      },
      child: Container(
        width: 70,
        height: 40,
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            colorData.name,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddMoreDropdown() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton<ColorData>(
        icon: Icon(
          Icons.add,
          color: kBlueColor,
        ),
        hint: Text('Add More'),
        onChanged: (ColorData? value) {
          if (value != null) {
            addMoreColor(value);
          }
        },
        dropdownColor: kWhiteColor,
        items:
            moreColors.map<DropdownMenuItem<ColorData>>((ColorData colorData) {
          return DropdownMenuItem<ColorData>(
            value: colorData,
            child: Text(colorData.name),
          );
        }).toList(),
      ),
    );
  }

  void toggleColorSelection(ColorData colorData) {
    setState(() {
      if (selectedColors == null) {
        selectedColors = [colorData];
      } else {
        if (selectedColors!.contains(colorData)) {
          selectedColors!.remove(colorData);
        } else {
          selectedColors!.add(colorData);
        }
      }
    });
  }

  void addMoreColor(ColorData colorData) {
    setState(() {
      if (selectedColors == null) {
        selectedColors = [colorData];
      } else {
        selectedColors!.add(colorData);
      }
    });
  }
}

class ColorData {
  final String name;
  final Color color;

  ColorData({required this.name, required this.color});
}
