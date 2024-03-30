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
}
