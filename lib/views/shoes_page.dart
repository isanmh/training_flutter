import 'package:flutter/material.dart';
import 'package:myapp/models/product_model.dart';
import 'package:myapp/slicing/theme_shoes.dart';
import 'package:myapp/widgets/product_card.dart';
import 'package:myapp/widgets/product_tile.dart';

class ShoesPage extends StatefulWidget {
  const new({super.key});

  @override
  State<ShoesPage> createState() => _ShoesPageState();
}

class _ShoesPageState extends State<ShoesPage> {
  // variable product
  List<ProductModel> products = ProductModel.popularProducts;
  List<ProductModel> newArrivals = ProductModel.newArrivals;

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
  Widget titleProduct() {
    return Container(
      margin: EdgeInsets.only(left: defaultMargin, top: defaultMargin),
      child: Text(
        "Popular Product",
        style: primaryText.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  // Card Product
  Widget popularProduct() {
    return Container(
      margin: EdgeInsets.only(top: 14, left: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var product in products)
              ProductCard(
                imageUrl: product.imageUrl,
                category: product.category,
                title: product.title,
                price: product.price,
              ),
          ],
        ),
      ),
    );
  }

  // tulisan product popular
  Widget titleArrivals() {
    return Container(
      margin: EdgeInsets.only(left: defaultMargin, top: defaultMargin),
      child: Text(
        "New Arrivals",
        style: primaryText.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  // Product Tile
  Widget productTile() {
    return Container(
      margin: EdgeInsets.only(top: 14, left: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var data in newArrivals)
              ProductTile(
                imageUrl: data.imageUrl,
                category: data.category,
                title: data.title,
                price: data.price,
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          header(),
          categories(),
          titleProduct(),
          popularProduct(),
          titleArrivals(),
          productTile(),
        ],
      ),
    );
  }
}
