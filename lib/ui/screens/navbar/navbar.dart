import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:inminutes/ui/screens/checkout/checkout_view.dart';
import 'package:inminutes/ui/screens/home/home_view.dart';
import 'package:inminutes/ui/screens/profile/profile_view.dart';
import 'package:inminutes/ui/widgets/utils/themes.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> with TickerProviderStateMixin {
  var _selectedTab = _SelectedTab.Navbar;
  
  int selectedIndex = 0;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
      setState(() {
        selectedIndex = i;
      });
    });
  }

  List<Widget> pages = [HomePageView() , HomePageView() , CheckoutView() , ProfileView()];

  @override
  Widget build(BuildContext context) {
    var anim = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 500),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightMode.scaffoldBackgroundColor,
        //extendBody: true,
        body: pages[selectedIndex],
        bottomNavigationBar: DotNavigationBar(
          //  itemPadding: EdgeInsets.only(bottom: 60),
          //margin: EdgeInsets.only(left: 10, right: 10 , bottom: 20),

          marginR: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
          paddingR: const EdgeInsets.only(bottom: 5, top: 2),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[500],
          splashBorderRadius: 50,
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Navbar
            DotNavigationBarItem(
              icon: Icon(Icons.home),
              selectedColor: Colors.black,
            ),

            /// Likes
            DotNavigationBarItem(
                icon: Icon(Icons.person_pin_circle_rounded), selectedColor: Colors.black),

            /// Search
            DotNavigationBarItem(
                icon: Icon(Icons.shopping_cart_checkout_sharp), selectedColor: Colors.black),

            /// Profile
            DotNavigationBarItem(
                icon: Icon(Icons.person), selectedColor: Colors.black),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { Navbar, favorite, search, person }
