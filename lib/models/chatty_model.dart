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
        isRead: true,
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

  static List<ChattyModel> groupList() {
    return [
      ChattyModel(
        name: "Jakarta Fair",
        imageUrl: "assets/images/group1.png",
        message: "Sorry, you’re not my type..",
        time: "Now",
        isRead: true,
      ),
      ChattyModel(
        name: "Angkringan",
        imageUrl: "assets/images/group2.png",
        message: "I saw it clearly and felt it, but I still can’t believe it.",
        time: "11:00",
        isRead: true,
      ),
      ChattyModel(
        name: "Jakarta Fair",
        imageUrl: "assets/images/group1.png",
        message: "Why does everyone care so much?",
        time: "Now",
        isRead: false,
      ),
      ChattyModel(
        name: "Angkringan",
        imageUrl: "assets/images/group2.png",
        message: "I saw it clearly and felt it, but I still can’t believe it.",
        time: "11:00",
        isRead: false,
      ),
    ];
  }
}
