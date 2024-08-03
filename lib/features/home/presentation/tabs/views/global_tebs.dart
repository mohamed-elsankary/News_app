import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/card_news.dart';

class GlobalTebs extends StatelessWidget {
  const GlobalTebs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Global News',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
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
