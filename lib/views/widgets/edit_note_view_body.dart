import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/edit_notes_list_view.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 20.0,
      ),
      child: EditNotesListView(
        note: note,
      ),
    );
  }
}
