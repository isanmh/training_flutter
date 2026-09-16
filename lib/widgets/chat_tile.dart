import 'package:flutter/material.dart';
import 'package:myapp/slicing/theme_chatty.dart';

class ChatTile extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            "assets/images/friends1.png",
            width: 55,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Joshuer", style: tilteTextStyle),
                Text(
                  "Sorry, you’re not my type..dasdasddasd.",
                  style: subtitleTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Spacer(),
          Text("Now", style: subtitleTextStyle),
        ],
      ),
    );
  }
}
