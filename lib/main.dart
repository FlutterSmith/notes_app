import 'package:flutter/material.dart';
import 'package:note_app/screens/home_screen.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ahmed Notes',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const HomeView(),
    );
  }
}
