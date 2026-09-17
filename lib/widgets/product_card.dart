import 'package:flutter/material.dart';
import 'package:myapp/slicing/theme_shoes.dart';

class ProductCard extends StatelessWidget {
  const new({super.key});

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
          Image.asset(
            "assets/images/shoes1.png",
            fit: BoxFit.cover,
            width: 215,
            height: 120,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "hiking",
                  style: subText.copyWith(fontSize: 12, fontWeight: regular),
                ),
                SizedBox(height: 6),
                Text(
                  "TERREX URBAN LOW GTX",
                  style: secondaryText.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  maxLines: 1,
                ),
                SizedBox(height: 6),
                Text(
                  "\$143,98",
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
