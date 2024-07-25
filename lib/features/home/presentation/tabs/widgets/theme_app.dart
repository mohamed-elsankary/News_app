import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/manger/bloc/theme_bloc.dart';

class ThemeApp extends StatefulWidget {
  const ThemeApp({
    super.key,
  });

  @override
  State<ThemeApp> createState() => _ThemeAppState();
}

class _ThemeAppState extends State<ThemeApp> {
  @override
  Widget build(BuildContext context) {
    return Switch(
        activeColor: Colors.black,
        activeTrackColor: Colors.amber,
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.blue,
        value: context.read<ThemeBloc>().state == ThemeMode.dark,
        onChanged: (value) {
          setState(() {
            context.read<ThemeBloc>().add(
                  ThemeChanged(value),
                );
          });
        });
  }
}
