import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/animated_text_field.dart';
import 'package:loading_btn/loading_btn.dart';
import 'package:note_app/widgets/custom_loading_button.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
            SizedBox(
              height: 60,
            ),
            CustomLoadingButton(),
          ],
        ),
      ),
    );
  }
}
