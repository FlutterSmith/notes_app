import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class EditNotesListView extends StatelessWidget {
  const EditNotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            maxLines: 1,
            hint: 'Note Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'Note Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
