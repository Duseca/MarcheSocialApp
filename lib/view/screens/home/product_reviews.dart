import 'package:flutter/material.dart';

import 'package:marche_social_app/view/widget/review_tile.dart';

class Productreview extends StatelessWidget {
  const Productreview({super.key});

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
              children: [ReviewTile(), ReviewTile(), ReviewTile()],
            ),
          ),
        ],
      ),
    );
  }
}
