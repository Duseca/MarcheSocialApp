import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/view/screens/cart/cart.dart';
import 'package:marche_social_app/view/screens/discover/discover.dart';
import 'package:marche_social_app/view/screens/home/home.dart';
import 'package:marche_social_app/view/screens/notifications/notifications.dart';
import 'package:marche_social_app/view/screens/scroll/reels.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

import '../../../constants/app_images/assets.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  int index = 0;
  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return HomeScreen();
      // Add cases for other tabs/screens
      case 1:
        return Discover();
      case 2:
        return Reels();
      case 3:
        return Notifications();
      case 4:
        return Cart();

      default:
        return Container(); // Handle unknown index
    }
  }

  Widget _buildBottomNavigationBar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BottomAppBar(
        height: 80,
        color: Colors.transparent,
        surfaceTintColor: kWhiteColor,
        notchMargin: 0,
        elevation: 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(
              0,
              Assets.imagesHome2,
              'Home',
              FloatingActionButtonLocation.centerDocked,
            ),
            _buildNavItem(
              1,
              Assets.imagesSearch,
              'Discover',
              FloatingActionButtonLocation.centerDocked,
            ),
            _buildNavItem(
              2,
              Assets.imagesScroll2,
              'Scroll',
              FloatingActionButtonLocation.centerDocked,
            ),
            _buildNavItem(
              3,
              Assets.imagesNotify,
              'Notification',
              FloatingActionButtonLocation.centerDocked,
            ),
            _buildNavItem(
              4,
              Assets.imagesCart,
              'Cart',
              FloatingActionButtonLocation.centerFloat,
            ),
          ],
        ),
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
                    color: isSelected ? kBlueColor : kGrey5Color,
                    size: 30,
                  )
                ],
              ),
            ),
            MyText(
              text: label,
              size: 10,
              color: isSelected ? kBlueColor : kGrey5Color,
            ),
            if (isSelected)
              Icon(
                Icons.circle,
                size: 4,
                color: KSecondaryColor,
              )
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
