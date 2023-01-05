import "package:flutter/material.dart";
import 'package:flutter_application_1/screens/cart/cart_page.dart';
import 'package:flutter_application_1/screens/home/home_page.dart';
import 'package:flutter_application_1/screens/save/save_page.dart';
import 'package:flutter_application_1/screens/user/user_page.dart';
import 'package:flutter_application_1/themes.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _screen = [
    HomePage(),
    CartPage(),
    SavePage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget customNavBar() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/icons/home.png',
                  width: 20,
                  color: _selectedIndex == 0 ? primaryColor : grayColor,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/icons/cart.png',
                  width: 20,
                  color: _selectedIndex == 1 ? primaryColor : grayColor,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/icons/whislist.png',
                  width: 18,
                  color: _selectedIndex == 2 ? primaryColor : grayColor,
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/icons/user.png',
                  width: 20,
                  color: _selectedIndex == 3 ? primaryColor : grayColor,
                ),
              ),
              label: ""),
        ],
      );
    }

    return Scaffold(
        bottomNavigationBar: customNavBar(),
        body: Stack(
            children: _screen
                .asMap()
                .map((i, screen) => MapEntry(
                    i,
                    Offstage(
                      offstage: _selectedIndex != i,
                      child: screen,
                    )))
                .values
                .toList()));
  }
}
