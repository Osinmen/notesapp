import 'dart:convert';
class Notes {
  final String title;
  final String notesContents;

  Notes({required this.title, required this.notesContents});

 factory Notes.fromJson(Map<String, dynamic> json) {
  return Notes(
    title: json['title']?.toString() ?? '',
    notesContents: json['notesContents']?.toString() ?? '',
  );
}

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'notesContents': notesContents,
    };
  }
}