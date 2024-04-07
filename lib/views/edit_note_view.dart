import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(note: note),
    );
  }
}
