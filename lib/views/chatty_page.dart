import 'package:flutter/material.dart';
import 'package:myapp/slicing/theme_chatty.dart';
import 'package:myapp/widgets/chat_tile.dart';

class ChattyPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset('assets/images/profile.png', width: 100),
                SizedBox(height: 20),
                Text(
                  "Sabrina Carpenter",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Travel Freelancer",
                  style: TextStyle(
                    color: lightBlueColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Friends", style: tilteTextStyle),
                      // widget terpisah chattile
                      // for (int i = 0; i < 2; i++) ChatTile(),
                      ChatTile(),
                      SizedBox(height: 30),
                      Text("Groups", style: tilteTextStyle),
                      // for (int i = 0; i < 5; i++) ChatTile(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
