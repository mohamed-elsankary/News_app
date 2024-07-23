import 'package:flutter/material.dart';

class SearchTebs extends StatelessWidget {
  const SearchTebs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Search',
        style: TextStyle(fontSize: 55),
      )),
    );
  }
}
