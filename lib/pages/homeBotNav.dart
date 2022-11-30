import 'package:closetify_try_1/pages/LooksPage.dart';
import 'package:closetify_try_1/pages/MarketPlacePage.dart';
import 'package:closetify_try_1/pages/WardrobePage.dart';
import 'package:closetify_try_1/pages/WishlistPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class homeNavBar extends StatefulWidget {
  const homeNavBar({super.key});

  @override
  State<homeNavBar> createState() => _homeNavBarState();
}

class _homeNavBarState extends State<homeNavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Wardrobe(),
    Looks(),
    MarketPlace(),
    Wishlist()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          color: Colors.black,
          buttonBackgroundColor: Color(0xFF05944F),
          backgroundColor: Colors.transparent,
          index: _currentIndex,
          height: 60,
          items: [
            ImageIcon(AssetImage("assets/logos/Vector_wardrobe.png")),
            ImageIcon(AssetImage("assets/logos/Vector_looks.png")),
            ImageIcon(AssetImage("assets/logos/Market_Stall.png")),
            Icon(Icons.star_border)
          ],
          letIndexChange: (index) => true,
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
            });
            
          }),
        ),
      ),
    );
  }
}
