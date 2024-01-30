import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';

class SizeInputField extends StatefulWidget {
  @override
  _SizeInputFieldState createState() => _SizeInputFieldState();
}

class _SizeInputFieldState extends State<SizeInputField> {
  final TextEditingController _controller = TextEditingController();
  List<String> sizes = ['31', '38', '39', '40'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: kGrey3Color),
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                spacing: 8.0,
                children: sizes
                    .map((size) => GestureDetector(
                          onTap: () {
                            setState(() {
                              sizes.remove(size);
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              size,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              Flexible(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '',
                  ),
                  onSubmitted: (value) {
                    if (value.isNotEmpty) {
                      setState(() {
                        sizes.add(value);
                        _controller.clear();
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
