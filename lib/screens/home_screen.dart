import 'package:flutter/material.dart';
import 'package:notesapplication/custom_widgets/circular_icon_button.dart';
import 'package:notesapplication/custom_widgets/custom_appbar.dart';
import 'package:notesapplication/custom_widgets/custom_floating_action_button.dart';
import 'package:notesapplication/custom_widgets/notes_card.dart';
import 'package:notesapplication/gen/assets.gen.dart';
import 'package:notesapplication/providers/note_colour_provider.dart';
import 'package:notesapplication/providers/notes_provider.dart';
import 'package:notesapplication/screens/note_details_screen.dart';
import 'package:notesapplication/utils/spacing_extensions.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Consumer<NotesProvider>(
            builder: (context, notesProvider, child) {
              return notesProvider.notes.isEmpty
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        150.height,
                        Assets.rafiki.image(),
                        10.height,
                        Center(
                          child: Text(
                            "Create your first note! ",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    )
                  : ListView.builder(
                      itemCount: notesProvider.notes.length,
                      itemBuilder: (context, index) {
                        final note = notesProvider.notes[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => NoteDetailsScreen(note: note),
                              ),
                            );
                          },
                          child: Dismissible(
                            onDismissed: (_) {
                              notesProvider.deleteNote(note);
                            },
                            direction: DismissDirection.endToStart,
                            key: Key(note.title + note.notesContents),
                            child: NotesCard(
                              title: note.title,
                              description: note.notesContents,
                            ),
                          ),
                        );
                      },
                    );
            },
          ),
        ),
        floatingActionButton: CustomFloatingActionButton(),
      ),
    );
  }
}
