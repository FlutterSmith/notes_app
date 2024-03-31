import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_notes_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.only(bottom: 8.0),
        child: CustomNotesCard(),
      );
    });
  }
}
