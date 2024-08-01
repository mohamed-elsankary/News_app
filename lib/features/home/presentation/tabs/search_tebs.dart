import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/card_news.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/cotegory_items.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/text_search_filed.dart';

class SearchTebs extends StatelessWidget {
  const SearchTebs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Text(
            'News from all around the world ',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextSearchFiled(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CotegoryItems(
                textStyel: 'Tecnology',
                width: 100,
              ),
              CotegoryItems(
                textStyel: 'Politic',
                width: 70,
              ),
              CotegoryItems(
                textStyel: 'Sport',
                width: 70,
              ),
              CotegoryItems(
                textStyel: 'Education',
                width: 100,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          CardNews(),
        ],
      ),
    );
  }
}
