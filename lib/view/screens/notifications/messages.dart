import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/screens/notifications/community.dart';
import 'package:marche_social_app/view/widget/message_tile.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

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
                for (var i = 0; i < 13; i++)
                  InkWell(
                    onTap: () {
                      Get.to(() => Commnunity());
                    },
                    child: Column(
                      children: [
                        MessageTile(
                          leading: Assets.imagesChatdummy,
                          subtitle: 'I bet it was Alex’s mistake.',
                          title: 'Ahmed Meerani',
                          isonline: true,
                          isread: false,
                        ),
                        Divider(
                          color: kGrey2Color,
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
