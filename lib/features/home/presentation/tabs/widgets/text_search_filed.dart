import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/constant.dart';

class TextSearchFiled extends StatelessWidget {
  const TextSearchFiled({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppThemeColor.lightGrey,
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: theme.primaryColor,
        ),
        suffixIcon: Icon(
          FontAwesomeIcons.sliders,
          color: theme.primaryColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppThemeColor.lightGrey),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppThemeColor.lightGrey,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
