import 'package:flutter/material.dart';
import 'package:notesapplication/custom_widgets/circular_icon_button.dart';
import 'package:notesapplication/gen/assets.gen.dart';
import 'package:notesapplication/models/notes.dart';
import 'package:notesapplication/screens/edit_notes_screen.dart';
import 'package:notesapplication/utils/spacing_extensions.dart';

class NoteDetailsScreen extends StatelessWidget {
  final Notes note;
  const NoteDetailsScreen({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularIconButton(imagePath: Assets.back.path, onTap: () {
                    Navigator.pop(context);
                  }),
                    CircularIconButton(imagePath: Assets.edit.path, onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return EditNotesScreen(note: note);
                      }));

                    }),
                ],
              ),
              20.height,
              Text(note.title, style: Theme.of(context).textTheme.bodyLarge),
              25.height,
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    note.notesContents,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
