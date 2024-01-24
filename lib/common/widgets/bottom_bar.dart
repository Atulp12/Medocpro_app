import 'package:badges/badges.dart' as Badge;
import 'package:flutter/material.dart';
import 'package:medocpro_app/features/explore/screen/explore_screen.dart';
import 'package:medocpro_app/features/account/screen/account_screen.dart';
import 'package:medocpro_app/features/cart/screen/cart_screen.dart';
import 'package:medocpro_app/features/home/screen/home_screen.dart';
import 'package:medocpro_app/features/wishlist/screen/wishlist_screen.dart';
import 'package:medocpro_app/utils/global.dart';

class BottomBar extends StatefulWidget {
  static const String routName = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBorderWidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const ExploreScreen(),
    const WishlistScreen(),
    const CartScreen(),
    const AccountScreen()
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _page,
          selectedItemColor: GlobalVariables.primaryColor,
          unselectedItemColor: GlobalVariables.greyColor,
          backgroundColor: GlobalVariables.whiteColor,
          iconSize: 28,
          onTap: updatePage,
          items: [
            BottomNavigationBarItem(
              icon:  Icon(
                Icons.home_outlined,
                color: _page == 0
                    ? GlobalVariables.primaryColor
                    : GlobalVariables.greyColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon:  Icon(
                Icons.explore_outlined,
                color: _page == 1
                    ? GlobalVariables.primaryColor
                    : GlobalVariables.greyColor,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon:  Icon(
                Icons.bookmark_border_outlined,
                color: _page == 2
                    ? GlobalVariables.primaryColor
                    : GlobalVariables.greyColor,
              ),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: 
               Badge.Badge(
                    elevation: 3,
                    badgeContent: const Text('0'),
                    badgeColor: Colors.white,
                    child: const Icon(Icons.shopping_cart_outlined)),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon:  Icon(
                Icons.person_outlined,
                color: _page == 4
                    ? GlobalVariables.primaryColor
                    : GlobalVariables.greyColor,
              ),
              label: 'Account',
            ),
          ]),
    );
  }
}
