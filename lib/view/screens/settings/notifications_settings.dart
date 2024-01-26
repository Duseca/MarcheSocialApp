import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class NotificationsSettings extends StatelessWidget {
  const NotificationsSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        context: context,
        title: 'Notifications',
        bgColor: kPrimaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                NotificatiosTile('Notifications'),
                NotificatiosTile('Groups'),
                NotificatiosTile('Messages'),
                NotificatiosTile('Email'),
                NotificatiosTile('Events'),
                NotificatiosTile('Notifications'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget NotificatiosTile(
    String title,
  ) {
    return Column(
      children: [
        ListTile(
            contentPadding: EdgeInsets.all(0),
            title: MyText(
              text: title,
            ),
            trailing: Switch(
              onChanged: (Value) {},
              value: false,
              inactiveTrackColor: kGrey2Color,
              activeColor: KSecondaryColor,
              trackOutlineColor: MaterialStatePropertyAll(kGrey2Color),
            )),
        Divider(
          color: kBlueColor,
          thickness: 1,
          height: 0,
        )
      ],
    );
  }
}
