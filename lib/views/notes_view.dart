import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(
          0xff53EED4,
        ),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 32,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
