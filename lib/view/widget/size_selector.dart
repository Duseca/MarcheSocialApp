import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class SizeSelector extends StatefulWidget {
  final ValueChanged<int>? onSizeSelected;

  const SizeSelector({Key? key, this.onSizeSelected}) : super(key: key);

  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  int selectedSize = 0; // 0 indicates no selection

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyText(
          text: 'Size:',
          weight: FontWeight.bold,
          size: 14,
          paddingLeft: 20,
          paddingRight: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            6, // Assuming you want sizes from 31 to 36
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
                  child: Container(
                    width: 25,
                    height: 27,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color:
                            selectedSize == size ? Colors.red : KTertiaryColor,
                        width: 1,
                      ),
                    ),
                    child: Center(
                        child: MyText(
                      weight: FontWeight.bold,
                      text: '$size',
                      size: 10,
                    )),
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
