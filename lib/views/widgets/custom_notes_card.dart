import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

class CustomNotesCard extends StatelessWidget {
  const CustomNotesCard({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNoteView(
              note: note,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 20,
        ),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  note.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(note.content,
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 18,
                    )),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).getAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 26,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24,
              ),
              child: Text(
                note.dateTime,
                style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
