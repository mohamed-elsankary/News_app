import 'package:flutter/material.dart';
import 'package:news_app/constant.dart';

class CotegoryItems extends StatelessWidget {
  const CotegoryItems(
      {super.key, required this.textStyel, required this.width});
  final String textStyel;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppThemeColor.lightGrey,
      ),
      child: Center(
        child: Text(
          textStyel,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
