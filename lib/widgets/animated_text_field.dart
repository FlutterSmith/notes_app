import 'package:flutter/material.dart';
import 'package:animated_hint_textfield/animated_hint_textfield.dart';
import 'package:note_app/constants.dart';

class CustomAnimatedTextField extends StatelessWidget {
  const CustomAnimatedTextField(
      {super.key, this.maxLines = 1, required this.hintTexts});

  final int maxLines;
  final String hintTexts;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextField(
      cursorColor: kPrimaryColor,
      animationType: Animationtype
          .typer, // Use Animationtype.typer for Type Write Style animations
      hintTextStyle: const TextStyle(
        color: kPrimaryColor,
        overflow: TextOverflow.ellipsis,
      ),
      hintTexts: [hintTexts],
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kPrimaryColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.all(12),
      ),
    );
  }
}
