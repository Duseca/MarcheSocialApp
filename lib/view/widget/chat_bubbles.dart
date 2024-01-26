import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

// ignore: must_be_immutable
class ChatBubble extends StatelessWidget {
  ChatBubble({
    Key? key,
    required this.isMe,
    required this.otherUserImg,
    required this.otherUserName,
    this.time,
    required this.date,
    required this.msgTime,
    required this.msg,
    required this.myImg,
  }) : super(key: key);

  final String msg, otherUserName, otherUserImg, date, msgTime, myImg;
  final bool isMe;
  String? time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          time!.isNotEmpty ? timeBubble(time!) : const SizedBox(),
          isMe
              ? Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 6,
                  alignment: WrapAlignment.end,
                  children: [
                    MyText(
                      text: '$date, $msgTime',
                      size: 10,
                    ),
                    MyText(
                      text: 'Me',
                      size: 10,
                    ),
                    CommonImageView(
                      height: 30,
                      width: 30,
                      url: myImg,
                      radius: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                )
              : Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 6,
                  alignment: WrapAlignment.start,
                  children: [
                    CommonImageView(
                      height: 30,
                      width: 30,
                      url: otherUserImg,
                      radius: 100,
                      fit: BoxFit.cover,
                    ),
                    MyText(
                      text: otherUserName,
                      size: 10,
                    ),
                    MyText(
                      text: '$date, $msgTime',
                      size: 10,
                    ),
                  ],
                ),
          Align(
            alignment: isMe ? Alignment.topRight : Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: isMe ? KSecondaryColor : kWhiteColor,
                borderRadius: isMe
                    ? BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))
                    : BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
              ),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  MyText(
                    text: msg,
                    size: 14,
                    color: isMe ? kWhiteColor : KTertiaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget timeBubble(String time) {
    return Center(
      child: MyText(
        paddingBottom: 18,
        text: time,
        size: 12,
        color: kGrey5Color,
      ),
    );
  }
}
