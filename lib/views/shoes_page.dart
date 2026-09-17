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

  // categories
  Widget categories() {
    return Container(
      padding: EdgeInsets.only(left: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "All Shoes",
                style: primaryText.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: secondaryTextColor),
              ),
              child: Text(
                "Running",
                style: primaryText.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: secondaryTextColor),
              ),
              child: Text(
                "Training",
                style: primaryText.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: secondaryTextColor),
              ),
              child: Text(
                "Basketball",
                style: primaryText.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: secondaryTextColor),
              ),
              child: Text(
                "Running",
                style: primaryText.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // tulisan product popular
  Widget TitleProduct() {
    return Container(
      margin: EdgeInsets.only(left: defaultMargin, top: defaultMargin),
      child: Text(
        "Popular Product",
        style: primaryText.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(children: [header(), categories(), TitleProduct()]),
    );
  }
}
