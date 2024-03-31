import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widgets/add_note_buttom_sheet.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            32,
          ),
        ),
      ),
      backgroundColor: kPrimaryColor,
      onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          context: context,
          builder: (context) {
            return const AddNoteButtomSheet(
              text: 'Add Note',
            );
          },
        );
      },
      child: const Icon(
        Icons.add,
        size: 30,
        color: Colors.black,
      ),
    );
  }
}
