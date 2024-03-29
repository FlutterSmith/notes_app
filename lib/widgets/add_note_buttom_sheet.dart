import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/animated_text_field.dart';
import 'package:loading_btn/loading_btn.dart';
import 'package:note_app/widgets/custom_loading_button.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomAnimatedTextField(
              maxLines: 1,
              hintTexts: 'Note Title',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomAnimatedTextField(
              hintTexts: 'Note Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 60,
            ),
            CustomLoadingButton(
              text: (text),
            ),
          ],
        ),
      ),
    );
  }
}
