import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news_app/features/home/presentation/view/tabs/global_tebs.dart';
import 'package:news_app/features/home/presentation/view/tabs/home_tebs.dart';
import 'package:news_app/features/home/presentation/view/tabs/profile_tebs.dart';
import 'package:news_app/features/home/presentation/view/tabs/search_tebs.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _currentIndex = 0;
  List<Widget> listOptions = <Widget>[
    const HomeTebs(),
    const GlobalTebs(),
    const SearchTebs(),
    const ProfileTebs()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GNav(
            selectedIndex: _currentIndex,
            onTabChange: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            activeColor: Colors.white,
            color: Colors.grey,
            tabBackgroundColor: Colors.blue,
            padding: const EdgeInsets.all(10),
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
      body: listOptions.elementAt(_currentIndex),
    );
  }
}
