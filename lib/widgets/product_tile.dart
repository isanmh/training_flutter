import 'package:flutter/material.dart';
import 'package:myapp/slicing/theme_shoes.dart';

class ProductTile extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String title;
  final String price;

  const ProductTile({
    super.key,
    required this.imageUrl,
    required this.category,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14, right: 12),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: 120,
              height: 120,
            ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: subText.copyWith(
                  color: subTextColor,
                  fontSize: 12,
                  fontWeight: regular,
                ),
              ),
              SizedBox(height: 6),
              Text(
                title,
                style: subText.copyWith(
                  color: primaryTextColor,
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(height: 6),
              Text(
                price,
                style: subText.copyWith(
                  color: priceColor,
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
