class ChattyModel {
  final String name;
  final String imageUrl;
  final String message;
  final String time;
  final bool isRead;

  ChattyModel({
    required this.name,
    required this.imageUrl,
    required this.message,
    required this.time,
    required this.isRead,
  });

  // list of data chatty
  static List<ChattyModel> chatList() {
    return [
      ChattyModel(
        name: "Joshuer",
        imageUrl: "assets/images/friends1.png",
        message: "Sorry, you’re not my type..",
        time: "Now",
        isRead: false,
      ),
      ChattyModel(
        name: "Gabriella",
        imageUrl: "assets/images/friends2.png",
        message: "I saw it clearly and felt it, but I still can’t believe it.",
        time: "11:00",
        isRead: false,
      ),
    ];
  }
}
