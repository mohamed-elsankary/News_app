import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/card_news.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/carousel_slider_widget.dart';

class HomeTebs extends StatefulWidget {
  const HomeTebs({super.key});

  @override
  State<HomeTebs> createState() => _HomeTebsState();
}

int carouselSliderIndix = 0;

class _HomeTebsState extends State<HomeTebs> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Breaking News',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                'View all',
                style: TextStyle(
                    color: theme.primaryColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 0.90,
              autoPlayInterval: const Duration(seconds: 10),
              height: 200,
              onPageChanged: (index, reason) {
                setState(() {
                  carouselSliderIndix = index;
                });
              },
            ),
            items: const [
              CarouselSliderWidget(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                  height: 6,
                  width: i == carouselSliderIndix ? 6 : 3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: i == carouselSliderIndix
                        ? theme.primaryColor
                        : Colors.grey,
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recommenddation',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                'View all',
                style: TextStyle(
                    color: theme.primaryColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
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
