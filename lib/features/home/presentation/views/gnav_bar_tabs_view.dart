import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news_app/features/home/presentation/tabs/global_tebs.dart';
import 'package:news_app/features/home/presentation/tabs/home_tebs.dart';
import 'package:news_app/features/home/presentation/tabs/profile_tebs.dart';
import 'package:news_app/features/home/presentation/tabs/search_tebs.dart';

class GNavBarTabsView extends StatefulWidget {
  const GNavBarTabsView({super.key});

  @override
  State<GNavBarTabsView> createState() => _GNavBarTabsViewState();
}

class _GNavBarTabsViewState extends State<GNavBarTabsView> {
  int _currentIndex = 0;
  List<Widget> listOptions = <Widget>[
    const HomeTebs(),
    const GlobalTebs(),
    const SearchTebs(),
    const ProfileTebs()
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: listOptions.elementAt(_currentIndex),
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.1),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GNav(
              selectedIndex: _currentIndex,
              onTabChange: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              activeColor: theme.hintColor,
              color: Colors.grey,
              tabBackgroundColor: theme.primaryColor,
              padding: const EdgeInsets.all(8),
              gap: 8,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.language,
                  text: 'Globtal',
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
        ),
      ),
    );
  }
}
