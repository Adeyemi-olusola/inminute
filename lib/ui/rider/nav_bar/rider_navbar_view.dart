import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:inminutes/ui/customer/screens/checkout/checkout_view.dart';
import 'package:inminutes/ui/customer/screens/home/home_view.dart';
import 'package:inminutes/ui/customer/screens/profile/profile_view.dart';
import 'package:inminutes/ui/rider/messages/messages_view.dart';
import 'package:inminutes/ui/rider/rider_homepage/home_page_view.dart';
import 'package:inminutes/utils/themes.dart';

class RiderNavbar extends StatefulWidget {
  @override
  _RiderNavbarState createState() => _RiderNavbarState();
}

class _RiderNavbarState extends State<RiderNavbar> with TickerProviderStateMixin {
  var _selectedTab = _SelectedTab.RiderNavbar;
  
  int selectedIndex = 0;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
      setState(() {
        selectedIndex = i;
      });
    });
  }

  List<Widget> pages = [RiderHomePageView() , RiderHomePageView() , MessagesView() , ProfileView()];

  @override
  Widget build(BuildContext context) {
    var anim = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 500),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: riderTheme.scaffoldBackgroundColor,
        //extendBody: true,
        body: pages[selectedIndex],
        bottomNavigationBar: DotNavigationBar(
          boxShadow: [

          ],
          //  itemPadding: EdgeInsets.only(bottom: 60),
          //margin: EdgeInsets.only(left: 10, right: 10 , bottom: 20),

          marginR: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
          paddingR: const EdgeInsets.only(bottom: 5, top: 2),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[500],
          splashBorderRadius: 50,
          // enableFloatingRiderNavbar: false,
          onTap: _handleIndexChanged,
          items: [
            /// RiderNavbar
            DotNavigationBarItem(
              icon: Icon(Icons.home),
              selectedColor: Colors.black,
            ),

            /// Likes
            DotNavigationBarItem(
                icon: Icon(Icons.person_pin_circle_rounded), selectedColor: Colors.black),

            /// Search
            DotNavigationBarItem(
                icon: Icon(Icons.chat), selectedColor: Colors.black),

            /// Profile
            DotNavigationBarItem(
                icon: Icon(Icons.person), selectedColor: Colors.black),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { RiderNavbar, favorite, search, person }
