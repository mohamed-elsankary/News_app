import 'package:flutter/material.dart';
import 'package:news_app/constant.dart';

class AccountAndDate extends StatelessWidget {
  const AccountAndDate({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width * .6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.account_circle_outlined,
            color: theme.primaryColor,
          ),
          const Text(
            'Aug 1,2024',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppThemeColor.grey,
            ),
          ),
        ],
      ),
    );
  }
}
