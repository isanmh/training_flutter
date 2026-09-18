import 'package:flutter/material.dart';
import 'package:myapp/models/chatty_model.dart';
import 'package:myapp/slicing/theme_chatty.dart';
import 'package:myapp/widgets/chat_tile.dart';

class ChattyPage extends StatefulWidget {
  const new({super.key});

  @override
  State<ChattyPage> createState() => _ChattyPageState();
}

class _ChattyPageState extends State<ChattyPage> {
  // tampung data chatty
  List<ChattyModel> chatList = [];
  List<ChattyModel> groupList = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      chatList = ChattyModel.chatList();
      groupList = ChattyModel.groupList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.add, size: 28, color: whiteColor),
        shape: CircleBorder(),
      ),
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
                      if (chatList.isEmpty)
                        Center(
                          child: Text(
                            "No chat available",
                            style: subtitleTextStyle,
                          ),
                        ),
                      for (var chat in chatList)
                        ChatTile(
                          imageUrl: chat.imageUrl,
                          name: chat.name,
                          message: chat.message,
                          time: chat.time,
                          isRead: chat.isRead,
                        ),
                      SizedBox(height: 30),
                      Text("Groups", style: tilteTextStyle),
                      if (groupList.isEmpty)
                        Center(
                          child: Text(
                            "No chat available",
                            style: subtitleTextStyle,
                          ),
                        ),
                      for (var data in groupList)
                        ChatTile(
                          imageUrl: data.imageUrl,
                          name: data.name,
                          message: data.message,
                          time: data.time,
                          isRead: data.isRead,
                        ),
                      SizedBox(height: 150),
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
