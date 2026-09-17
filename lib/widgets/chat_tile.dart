import 'package:flutter/material.dart';
import 'package:myapp/slicing/theme_chatty.dart';

class ChatTile extends StatelessWidget {
  // parameter Chat tile
  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final bool isRead;

  const ChatTile({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
    required this.isRead,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(imageUrl, width: 55, fit: BoxFit.cover),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: tilteTextStyle),
                Text(
                  message,
                  style: isRead
                      ? subtitleTextStyle
                      : subtitleTextStyle.copyWith(color: greenColor),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Spacer(),
          Text(time, style: subtitleTextStyle),
        ],
      ),
    );
  }
}
