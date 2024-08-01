import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news_app/features/home/presentation/tabs/views/global_tebs.dart';
import 'package:news_app/features/home/presentation/tabs/views/home_tebs.dart';
import 'package:news_app/features/home/presentation/tabs/views/profile_tebs.dart';
import 'package:news_app/features/home/presentation/tabs/views/search_tebs.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/switch_change_theme.dart';

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: theme.scaffoldBackgroundColor,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SwitchChangeTheme(),
            )
          ],
        ),
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
          ),
        ),
      ),
    );
  }
}
