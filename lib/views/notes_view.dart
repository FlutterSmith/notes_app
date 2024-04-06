import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_action_button.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomActionButton(),
      body: NotesViewBody(),
    );
  }
}
