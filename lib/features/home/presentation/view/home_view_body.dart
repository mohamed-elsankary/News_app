import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/view/widgets/bottom_navigation_bar_items.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavigationBarItemsApp(),
    );
  }
}
