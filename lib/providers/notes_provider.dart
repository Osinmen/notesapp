import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:notesapplication/models/notes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotesProvider extends ChangeNotifier {
  final List<Notes> _notes = [];
  List<Notes> get notes => _notes;
  static const _prefKey = 'notes';

  NotesProvider() {
    loadNotes();
  }

  Future<void> loadNotes() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = prefs.getStringList(_prefKey);
    if (jsonList != null) {
      _notes.clear();
      _notes.addAll(
        jsonList.map((jsonStr) => Notes.fromJson(jsonDecode(jsonStr))).toList(),
      );
    }
    notifyListeners();
  }

  Future<void> saveNotes() async{
    final prefs = await SharedPreferences.getInstance();
    final jsonList = notes.map((note) => jsonEncode(note.toJson())).toList();
    await prefs.setStringList(_prefKey, jsonList);
  }

  Future <void> addNotes(String title, String content) async{
    _notes.add(Notes(title: title, notesContents: content));
    notifyListeners();
    await saveNotes();

  }

  Future<void> deleteNote(Notes note) async{
    _notes.remove(note);
    notifyListeners();
    await saveNotes();
  }
}
