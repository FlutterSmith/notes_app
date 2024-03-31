import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';
import 'package:note_app/views/widgets/custom_button.dart';

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
        child: AddNoteForm(text: text),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (
              value,
            ) {
              title = value;
            },
            maxLines: 1,
            hint: 'Note Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (
              value,
            ) {
              content = value;
            },
            hint: 'Note Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 60,
          ),
           CustomButton(
            onTap:  (
              
            ){
               if(
                formKey.currentState!.validate())
               {
                 formKey.currentState!.save();
               } else {
                 autovalidateMode = AutovalidateMode.always;
                 setState(() {});

               }   
            },
          ),
        ],
      ),
    );
  }
}
