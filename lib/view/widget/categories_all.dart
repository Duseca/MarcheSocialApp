import 'package:flutter/widgets.dart';
import 'package:marche_social_app/view/widget/circle_category.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class CategoriesAll extends StatelessWidget {
  CategoriesAll({super.key, required this.path, required this.text});
  String path, text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 219,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          children: [
            MyText(
              text: 'Popular Categories',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleCategory(path: path, text: text),
            CircleCategory(path: path, text: text),
            CircleCategory(path: path, text: text),
            CircleCategory(path: path, text: text),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleCategory(path: path, text: text),
            CircleCategory(path: path, text: text),
            CircleCategory(path: path, text: text),
            CircleCategory(path: path, text: text),
          ],
        ),
      ]),
    );
  }
}
