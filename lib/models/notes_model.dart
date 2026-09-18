class NotesModel {
  final String id, title, content;

  NotesModel({required this.id, required this.title, required this.content});

  factory NotesModel.fromJson(Map<String, dynamic> json) {
    return NotesModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
    );
  }
}
