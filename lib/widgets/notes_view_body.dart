import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 20.0,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          CustomAppBar(),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
