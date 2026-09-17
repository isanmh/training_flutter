import 'package:flutter/material.dart';
import 'package:myapp/slicing/theme_shoes.dart';

class ProductTile extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14, right: 12),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/shoes4.png",
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
                "Football",
                style: subText.copyWith(
                  color: subTextColor,
                  fontSize: 12,
                  fontWeight: regular,
                ),
              ),
              SizedBox(height: 6),
              Text(
                "Predator 20.3 Firm Ground",
                style: subText.copyWith(
                  color: primaryTextColor,
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(height: 6),
              Text(
                "\$68,47",
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
