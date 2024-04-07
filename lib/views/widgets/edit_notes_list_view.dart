import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

class EditNotesListView extends StatefulWidget {
  const EditNotesListView({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNotesListView> createState() => _EditNotesListViewState();
}

class _EditNotesListViewState extends State<EditNotesListView> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = subTitle ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).getAllNotes();
              Navigator.pop(context);
            },
            text: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            maxLines: 1,
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hint: widget.note.content,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
