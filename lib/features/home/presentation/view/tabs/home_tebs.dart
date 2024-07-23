import 'package:flutter/material.dart';

class HomeTebs extends StatelessWidget {
  const HomeTebs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 55),
        ),
      ),
    );
  }
}
