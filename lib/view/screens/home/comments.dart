import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15),
              physics: const BouncingScrollPhysics(),
              children: [
                CommentTile(),
                CommentTile(),
                CommentTile(),
                CommentTile(),
                CommentTile()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget CommentTile() {
    return ListTile(
      leading: CommonImageView(
          imagePath: Assets.imagesChatdummy2,
          height: 30,
          width: 30,
          radius: 200,
          fit: BoxFit.cover),
      title: MyText(
        text: 'Madelina',
        size: 14,
        weight: FontWeight.bold,
      ),
      titleAlignment: ListTileTitleAlignment.top,
      subtitle: Column(
        children: [
          Row(
            children: [
              MyText(
                text: '😂😂😂❤️lol',
                size: 14,
              ),
            ],
          ),
          Row(
            children: [
              MyText(
                text: '2m ago • 86 Likes',
                size: 14,
                color: kGrayColor,
              ),
              MyText(
                paddingTop: 5,
                text: 'Reply',
                paddingLeft: 30,
                color: KSecondaryColor,
              )
            ],
          ),
        ],
      ),
      trailing: Icon(
        Icons.thumb_up_alt_outlined,
        color: kGrayColor,
        weight: 2,
        size: 15,
      ),
    );
  }
}
