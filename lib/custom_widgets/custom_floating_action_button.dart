import 'package:flutter/material.dart';
import 'package:notesapplication/gen/assets.gen.dart';
import 'package:notesapplication/screens/add_notes_screen.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return AddNotesScreen();
            },
          ),
        );
      },
      child: Assets.add.image(color: Theme.of(context).primaryColor),
    );
  }
}
