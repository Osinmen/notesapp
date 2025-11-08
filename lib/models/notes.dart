import 'dart:convert';
class Notes {
  final String title;
  final String notesContents;

  Notes({required this.title, required this.notesContents});

  factory Notes.fromJson(Map<String, dynamic> json) {
    return Notes(
      title: json['title'],
      notesContents: json['notesContents'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'notesContents': notesContents,
    };
  }
}