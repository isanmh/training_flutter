import 'package:flutter/material.dart';
import 'package:myapp/slicing/theme_shoes.dart';

class ShoesPage extends StatelessWidget {
  const new({super.key});

  // widget header
  Widget header() {
    return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ihsan Miftahul Huda asdfasdf",
                  style: primaryText.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                  maxLines: 1,
                  // overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "@isanmh",
                  style: secondaryText.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
          ),
          // icon
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/user.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(children: [header()]),
    );
  }
}
