import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:notesapplication/custom_widgets/back_button_widget.dart';
import 'package:notesapplication/custom_widgets/circular_icon_button.dart';
import 'package:notesapplication/custom_widgets/content_text_field.dart';
import 'package:notesapplication/custom_widgets/title_text_field.dart';
import 'package:notesapplication/gen/assets.gen.dart';
import 'package:notesapplication/providers/notes_provider.dart';
import 'package:notesapplication/utils/spacing_extensions.dart';
import 'package:provider/provider.dart';

class AddNotesScreen extends StatefulWidget {
  const AddNotesScreen({super.key});

  @override
  State<AddNotesScreen> createState() => _AddNotesScreenState();
}

class _AddNotesScreenState extends State<AddNotesScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButtonWidget(),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                "Save",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            onTap: () {
              final title = titleController.text.trim();
              final content = contentController.text.trim();
              if (title.isNotEmpty && content.isNotEmpty) {
                Provider.of<NotesProvider>(
                  context,
                  listen: false,
                ).addNotes(title, content);
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
        ],
      ),
      body: Column(
        children: [
          20.height,
          TitleTextField(controller: titleController),
          25.height,
          ContentTextField(controller: contentController),
        ],
      ),
    );
  }
}

