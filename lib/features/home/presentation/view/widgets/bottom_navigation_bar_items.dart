import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigationBarItemsApp extends StatelessWidget {
  const BottomNavigationBarItemsApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.1)),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.all(15),
        child: GNav(
          activeColor: Colors.white,
          color: Colors.grey,
          tabBackgroundColor: Colors.blue,
          padding: EdgeInsets.all(10),
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.language,
              text: 'Global',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.person_outline_rounded,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
