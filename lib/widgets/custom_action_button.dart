import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_buttom_sheet.dart';

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
      backgroundColor: const Color(
        0xff53EED4,
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return  AddNoteButtomSheet();
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

