import 'package:flutter/material.dart';
import 'package:note_app/widgets/animated_text_field.dart';
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
          CustomAnimatedTextField(
            maxLines: 1,
            hintTexts: 'Note Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomAnimatedTextField(
            hintTexts: 'Note Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
