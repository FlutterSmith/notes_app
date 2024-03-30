import 'package:flutter/material.dart';
import 'package:note_app/widgets/edit_notes_list_view.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 20.0,
      ),
      child: EditNotesListView(),
    );
  }
}
