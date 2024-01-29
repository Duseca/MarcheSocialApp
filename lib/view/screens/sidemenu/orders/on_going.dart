import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/widget/checkout_tile.dart';

class OnGoing extends StatelessWidget {
  const OnGoing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                for (var i = 0; i < 5; i++)
                  Checkouttile(
                      color: 'Black',
                      leading: Assets.imagesDummyproduct,
                      qty: '01',
                      size: '41',
                      subtitle1: '€ 270',
                      subtitle2: '  € 400',
                      isongoing: true,
                      title: 'Cocooil Body Oil')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
