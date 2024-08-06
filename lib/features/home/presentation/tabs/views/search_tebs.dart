import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/card_news.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/cotegory_items.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/text_search_filed.dart';

class SearchTebs extends StatelessWidget {
  const SearchTebs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Discover',
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'News from all around the world ',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextSearchFiled(),
          const SizedBox(
            height: 20,
          ),
          const Row(
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
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: CardNews(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
