import 'package:bakery_shop/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xE5E5E5),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Color(0xE5E5E5),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
            child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Color(0xFFD89F68),
                color: Colors.black,
                tabs: [
                  GButton(icon: LineIcons.home),
                  GButton(icon: LineIcons.shoppingBag),
                  GButton(icon: LineIcons.heart),
                  GButton(icon: LineIcons.user),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
