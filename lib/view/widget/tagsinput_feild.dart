import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class TagsInputField extends StatefulWidget {
  @override
  _TagsInputFieldState createState() => _TagsInputFieldState();
}

class _TagsInputFieldState extends State<TagsInputField> {
  final TextEditingController _controller = TextEditingController();
  List<String> keywords = [
    'key1',
    'key2',
    'key3',
    'key4'
  ]; // Make sure the keys are unique

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2.0),
          decoration: BoxDecoration(
            border: Border.all(color: kGrey3Color),
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 8.0,
                  children: keywords
                      .map((size) => InputChip(
                            backgroundColor: kBlueColor,
                            label: MyText(
                              text: size,
                              color: kWhiteColor,
                            ),
                            onDeleted: () {
                              setState(() {
                                keywords.remove(size);
                              });
                            },
                          ))
                      .toList(),
                ),
              ),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Add tag',
                    hintStyle: TextStyle(
                        fontFamily: AppFonts.OUTFit_DISPLAY, fontSize: 12)),
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    setState(() {
                      keywords.add(value);
                      _controller.clear();
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
