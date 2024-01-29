import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/screens/cart/cart.dart';
import 'package:marche_social_app/view/screens/discover/discover.dart';
import 'package:marche_social_app/view/screens/home/home.dart';
import 'package:marche_social_app/view/screens/seller/notifications/notifications.dart';
import 'package:marche_social_app/view/screens/scroll/reels.dart';
import 'package:marche_social_app/view/screens/seller/add/upload_product.dart';
import 'package:marche_social_app/view/screens/seller/dashboaard/dashboard.dart';
import 'package:marche_social_app/view/screens/seller/orders/orders.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

import '../../../constants/app_images/assets.dart';

class SellerBottomNavBar extends StatefulWidget {
  @override
  State<SellerBottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<SellerBottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  int index = 0;
  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return Dashboard();
      // Add cases for other tabs/screens
      case 1:
        return Orders();

      case 3:
        return Notifications();
      case 4:
        return Cart();

      default:
        return Container(); // Handle unknown index
    }
  }

  Widget _buildBottomNavigationBar() {
    return BottomAppBar(
      height: 75,
      color: Colors.transparent,
      surfaceTintColor: kWhiteColor,
      notchMargin: 0,
      elevation: 4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            0,
            Assets.imagesSellermenu,
            'Dashboard',
            FloatingActionButtonLocation.centerDocked,
          ),
          _buildNavItem(
            1,
            Assets.imagesOrders,
            'Orders',
            FloatingActionButtonLocation.centerDocked,
          ),
          InkWell(
              onTap: () {
                _onItemTapped(2);
              },
              child: CommonImageView(
                imagePath: Assets.imagesAdd,
              )),
          _buildNavItem(
            3,
            Assets.imagesNotify,
            'Notification',
            FloatingActionButtonLocation.centerDocked,
          ),
          _buildNavItem(
            4,
            Assets.imagesAnalytics,
            'Analytics',
            FloatingActionButtonLocation.centerFloat,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    int index,
    String icon,
    String label,
    FloatingActionButtonLocation fabLocation,
  ) {
    bool isSelected = _selectedIndex == index;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => _onItemTapped(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Stack(
                children: [
                  ImageIcon(
                    AssetImage(icon),
                    color: isSelected ? KSecondaryColor : kGrey5Color,
                    size: 30,
                  )
                ],
              ),
            ),
            MyText(
              text: label,
              size: 10,
              color: isSelected ? KSecondaryColor : kGrey5Color,
            ),
            if (isSelected)
              Icon(
                Icons.circle,
                size: 4,
                color: kBlueColor,
              )
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    if (index != 2) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
      Get.to(() => UploadProduct());
    }
  }
}
