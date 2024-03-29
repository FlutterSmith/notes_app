import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_buttom_sheet.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

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
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
          ),
          AddNoteButtomSheet(
            text: 'SAVE',
          ),
        ],
      ),
    );
  }
}
