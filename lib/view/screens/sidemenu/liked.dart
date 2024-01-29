import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/product_tile.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class Liked extends StatelessWidget {
  const Liked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context, title: 'Liked', bgColor: kPrimaryColor),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: AppSizes.DEFAULT,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                    crossAxisSpacing: 2, // Adjust the spacing as needed
                    mainAxisSpacing: 0.6 // Adjust the spacing as needed
                    ),
                itemCount: 10, // Replace with the actual number of items
                itemBuilder: (context, index) {
                  return ProductTile(
                    isgrid: true,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
