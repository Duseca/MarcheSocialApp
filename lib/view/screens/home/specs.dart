import 'package:flutter/material.dart';
import 'package:marche_social_app/view/widget/my_bullet_point.dart';

class Specs extends StatelessWidget {
  const Specs({super.key});

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
                MyBullet(
                    point:
                        'Material: Lightweight and breathable mesh upper for comfort.',
                    number: '1.'),
                MyBullet(
                    point:
                        'Sole: Cushioned EVA midsole for optimal support and shock absorption.',
                    number: '2.'),
                MyBullet(
                    point:
                        'Traction: Non-slip rubber outsole for superior grip on various surfaces.',
                    number: '3.'),
                MyBullet(
                    point:
                        'Design: Sleek and versatile design for everyday wear.',
                    number: '4.'),
                MyBullet(
                    point: 'Closure: Lace-up closure for a secure fit.',
                    number: '5.'),
                MyBullet(
                    point:
                        'Color Options: Available in classic black, white, and navy blue.',
                    number: '6.'),
                MyBullet(
                    point: "Sizes: Ranges from US Men's 6 to 12.",
                    number: '7.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
