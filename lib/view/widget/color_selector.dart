import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class ColorSelector extends StatefulWidget {
  final ValueChanged<int>? onSizeSelected;

  const ColorSelector({Key? key, this.onSizeSelected}) : super(key: key);

  @override
  _ColorSelectorState createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  int selectedSize = 0; // 0 indicates no selection

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyText(
          text: 'Colors:',
          weight: FontWeight.bold,
          size: 14,
          paddingLeft: 20,
          paddingRight: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            3, // Assuming you want sizes from 31 to 36
            (index) {
              int size = index + 31;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSize = size;
                    widget.onSizeSelected?.call(selectedSize);
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: selectedSize == size
                                  ? Colors.red
                                  : kGrey5Color,
                              width: selectedSize == size ? 2 : 1,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: Assets.imagesColordummy,
                            fit: BoxFit.cover,
                            radius: 40,
                          )),
                      MyText(text: 'White')
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
