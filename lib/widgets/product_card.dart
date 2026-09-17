import 'package:flutter/material.dart';
import 'package:myapp/slicing/theme_shoes.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String title;
  final String price;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.category,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryTextColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: defaultMargin),
          Image.asset(imageUrl, fit: BoxFit.cover, width: 215, height: 120),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: subText.copyWith(fontSize: 12, fontWeight: regular),
                ),
                SizedBox(height: 6),
                Text(
                  title,
                  style: secondaryText.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  maxLines: 1,
                ),
                SizedBox(height: 6),
                Text(
                  price,
                  style: secondaryText.copyWith(
                    fontSize: 14,
                    color: priceColor,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
