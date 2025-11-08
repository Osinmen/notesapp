import 'package:flutter/material.dart';
import 'package:notesapplication/custom_widgets/circular_icon_button.dart';
import 'package:notesapplication/gen/assets.gen.dart';
import 'package:notesapplication/models/notes.dart';
import 'package:notesapplication/providers/notes_provider.dart';
import 'package:provider/provider.dart';

class EditNotesScreen extends StatefulWidget {
  final Notes note;

  const EditNotesScreen({super.key, required this.note});

  @override
  State<EditNotesScreen> createState() => _EditNotesScreenState();
}

class _EditNotesScreenState extends State<EditNotesScreen> {
  late TextEditingController _titleController;
  late TextEditingController _contentController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.note.title);
    _contentController = TextEditingController(text: widget.note.notesContents);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NotesProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircularIconButton(
            imagePath: Assets.back.path,
            onTap: () {
              Navigator.pop(context, );
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircularIconButton(
              imagePath: Assets.save.path,
              onTap: () async {
                final updatedTitle = _titleController.text.trim();
                final updatedContent = _contentController.text.trim();

                if (updatedTitle.isEmpty && updatedContent.isEmpty) {
                  // boolean not to save empty note
                  return;
                }
                final updatedNote = Notes(
                  title: updatedTitle,
                  notesContents: updatedContent,
                );

                //update the provider on the changes
                await provider.updateNote(widget.note, updatedNote);

                if (!context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("saved succesfully!!"),
                    duration: const Duration(milliseconds: 300 ),
                    backgroundColor: Colors.green,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Editable title
            TextField(
              controller: _titleController,
              style: Theme.of(context).textTheme.bodyLarge,
              decoration: const InputDecoration(
                hintText: 'Title',
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 10),
            // Editable content
            Expanded(
              child: TextField(
                controller: _contentController,
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: null,
                expands: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
