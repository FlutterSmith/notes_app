import 'package:flutter/material.dart';
import 'package:note_app/widgets/animated_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAnimatedTextField(),
        ],
      ),
    );
  }
}
