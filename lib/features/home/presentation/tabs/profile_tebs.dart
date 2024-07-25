import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/linkes_profile_widget.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/theme_app.dart';

class ProfileTebs extends StatelessWidget {
  const ProfileTebs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ThemeApp(),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/images/news.png',
              color: Colors.blue,
            ),
            const SizedBox(
              height: 220,
            ),
            const LinkesProfileWidget(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'App Version : 1.0.0',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
