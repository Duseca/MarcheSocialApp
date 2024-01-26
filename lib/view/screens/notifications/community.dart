import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/main.dart';
import 'package:marche_social_app/view/widget/chat_bubbles.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/send_field.dart';

// ignore: must_be_immutable
class Commnunity extends StatelessWidget {
  List<Map<String, dynamic>> chat = [
    {
      'isMe': false,
      'msg': 'Hey what’s up?',
      'otherUserName': 'Duseca software',
      'otherUserImg': dummyimg1,
      'date': 'Oct 19, 2022',
      'msgTime': '3:53 PM',
      'time': 'Oct 19',
    },
    {
      'isMe': true,
      'msg': 'Nothing much just got here',
      'otherUserName': 'Duseca software',
      'otherUserImg': dummyimg12,
      'date': 'Oct 19, 2022',
      'msgTime': '3:53 PM',
      'time': '',
    },
    {
      'isMe': false,
      'msg': 'yoo why is user B’s S-cup going off? ',
      'otherUserName': 'Duseca software',
      'otherUserImg': dummyimg3,
      'date': 'Oct 19, 2022',
      'msgTime': '3:53 PM',
      'time': '',
    },
    {
      'isMe': false,
      'msg': 'don’t worry, I got em.',
      'otherUserName': 'Duseca software',
      'otherUserImg': dummyimg1,
      'date': 'Oct 19, 2022',
      'msgTime': '3:53 PM',
      'time': '',
    },
  ];

  bool isTyping = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: AppSizes.DEFAULT,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: CommonImageView(
                      imagePath: Assets.imagesBack,
                      height: 30,
                    ),
                  ),
                  Expanded(
                      child: ListTile(
                    leading: CommonImageView(
                      imagePath: Assets.imagesChatdummy,
                      radius: 200,
                      height: 50,
                      width: 50,
                    ),
                    title: MyText(
                      text: 'Qaleen Bhayya',
                      weight: FontWeight.w600,
                      size: 12,
                    ),
                    subtitle: MyText(
                      text: 'Online',
                      color: kGreenColor,
                      size: 10,
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: chat.length,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.fromLTRB(15, 60, 15, 100),
                          itemBuilder: (context, index) {
                            var data = chat[index];
                            return ChatBubble(
                              isMe: data['isMe'],
                              myImg: dummyimg1,
                              msg: data['msg'],
                              otherUserImg: data['otherUserImg'],
                              otherUserName: data['otherUserName'],
                              msgTime: data['msgTime'],
                              time: data['time'],
                              date: data['date'],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  chatSendField(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget chatSendField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          color: kPrimaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SendField(
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
