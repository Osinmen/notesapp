import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:notesapplication/custom_widgets/circular_icon_button.dart';
import 'package:notesapplication/custom_widgets/content_text_field.dart';
import 'package:notesapplication/custom_widgets/title_text_field.dart';
import 'package:notesapplication/gen/assets.gen.dart';
import 'package:notesapplication/providers/notes_provider.dart';
import 'package:notesapplication/utils/spacing_extensions.dart';
import 'package:provider/provider.dart';

class EditNotesScreen extends StatefulWidget {
  const EditNotesScreen({super.key});

  @override
  State<EditNotesScreen> createState() => _EditNotesScreenState();
}

class _EditNotesScreenState extends State<EditNotesScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircularIconButton(imagePath: Assets.back.path, onTap: () {
            Navigator.pop(context);
          }),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircularIconButton(
              imagePath: Assets.save.path,
              onTap: () {
                final title = titleController.text.trim();
                final content = contentController.text.trim();
                if (title.isNotEmpty && content.isNotEmpty) {
                  Provider.of<NotesProvider>(context, listen: false).addNotes(title, content);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 300),
                      backgroundColor: Colors.green,
                      content: Text('Note saved!'),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          20.height,
          TitleTextField(controller: titleController),
          25.height,
          ContentTextField(controller: contentController,),
        ],
      ),
    );
  }
}
