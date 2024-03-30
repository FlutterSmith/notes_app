class NoteModel {
  final String title;
  final String content;
  DateTime dateTime = DateTime.now();
  final int color;

  NoteModel({
    required this.title,
    required this.content,
    required this.dateTime,
    required this.color,
  });
  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      title: json['title'],
      content: json['content'],
      dateTime: DateTime.parse(json['dateTime']),
      color: json['color'],
    );
  }
}
