import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/notification_tile.dart';

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<NotificationsTile> links = [
      NotificationsTile(
        path: Assets.imagesFire,
        subtitle: 'Your Post is Trending in the Popular Section',
        title: 'title',
        trailing: DateTime.now().subtract(Duration(days: 21)),
      ),
      NotificationsTile(
        path: Assets.imagesLike,
        subtitle: 'Your Post is Trending in the Popular Section',
        title: 'title',
        trailing: DateTime.now().subtract(Duration(days: 1)),
      ),
      NotificationsTile(
        path: Assets.imagesComment,
        subtitle: 'Your Post is Trending in the Popular Section',
        title: 'title',
        trailing: DateTime.now().subtract(Duration(days: 1)),
      ),
    ];

    List<NotificationsTile> last7DaysLinks = links
        .where((item) => DateTime.now().difference(item.trailing).inDays <= 7)
        .toList();

    List<NotificationsTile> lastMonthLinks = links
        .where((item) => DateTime.now().difference(item.trailing).inDays > 7)
        .toList();

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: AppSizes.DEFAULT,
        shrinkWrap: true,
        children: [
          MyText(
            text: 'Today',
            textAlign: TextAlign.center,
            color: kGrayColor,
            paddingBottom: 10,
          ),
          ...last7DaysLinks.map(
            (item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NotificationsTile(
                  path: item.path,
                  title: item.title,
                  subtitle: item.subtitle,
                  trailing: item.trailing,
                )),
          ),
          MyText(
            paddingTop: 10,
            text: 'Yesterday',
            textAlign: TextAlign.center,
            color: kGrayColor,
            paddingBottom: 10,
          ),
          ...lastMonthLinks.map((item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: NotificationsTile(
                path: item.path,
                title: item.title,
                subtitle: item.subtitle,
                trailing: item.trailing,
              ))),
        ],
      ),
    );
  }
}
