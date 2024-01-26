import 'package:flutter/widgets.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_styling.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class CircleCategory extends StatelessWidget {
  CircleCategory({super.key, required this.path, required this.text});
  String path, text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 52,
          width: 52,
          decoration: circle(
            KSecondaryColor.withOpacity(0.15),
            KSecondaryColor.withOpacity(0.15),
          ),
          child: Center(
              child: CommonImageView(
            imagePath: path,
            height: 30,
          )),
        ),
        MyText(
          text: text,
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  
}
