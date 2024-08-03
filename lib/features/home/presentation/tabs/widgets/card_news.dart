import 'package:flutter/material.dart';
import 'package:news_app/constant.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/account_and_date.dart';

class CardNews extends StatelessWidget {
  const CardNews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                image: AssetImage('assets/images/logo.jpg'),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'BBC News',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppThemeColor.grey,
                ),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * .6,
                child: const Text(
                  'Falling down is an accident. Staying down is a choice for you',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const AccountAndDate(),
            ],
          ),
        ],
      ),
    );
  }
}
