import 'package:flutter/material.dart';
import 'package:myapp/slicing/theme_shoes.dart';

class ProductTile extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 14,
        right: defaultMargin,
        left: defaultMargin,
      ),
    );
  }
}
