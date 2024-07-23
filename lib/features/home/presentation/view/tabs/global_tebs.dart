import 'package:flutter/material.dart';

class GlobalTebs extends StatelessWidget {
  const GlobalTebs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'global',
        style: TextStyle(fontSize: 55),
      )),
    );
  }
}
