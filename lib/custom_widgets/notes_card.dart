import 'package:flutter/material.dart';

class NotesCard extends StatelessWidget {
  String title;
  String description;
  
  NotesCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title.toString(), maxLines: 1, overflow: TextOverflow.clip,), 
        subtitle: Text(description.toString(), maxLines: 2, overflow: TextOverflow.clip,),
      ),
    );
  }
}