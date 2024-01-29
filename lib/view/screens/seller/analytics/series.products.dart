import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/product_tile.dart';

class SeriesProducts extends StatelessWidget {
  const SeriesProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
