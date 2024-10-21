import 'package:flutter/material.dart';
import 'wine_category_card.dart';

class WineCategoryList extends StatelessWidget {
  const WineCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 189, // Height of the cards
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          WineCategoryCard(
            imagePath: 'assets/images/product_categories/red_wines.png',
            title: 'Red wine',
            itemCount: 312,
          ),
          const SizedBox(width: 10),
          WineCategoryCard(
            imagePath: 'assets/images/product_categories/white_wines.png',
            title: 'White wine',
            itemCount: 212,
          ),
          const SizedBox(width: 10),
          WineCategoryCard(
            imagePath: 'assets/images/product_categories/red_wines.png',
            title: 'Rose wine',
            itemCount: 45,
          ),
          const SizedBox(width: 10),
          WineCategoryCard(
            imagePath: 'assets/images/product_categories/white_wines.png',
            title: 'Sparkling wine',
            itemCount: 112,
          ),
        ],
      ),
    );
  }
}
