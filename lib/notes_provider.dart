import 'package:flutter/material.dart';
import 'package:new_app/notes_list_model.dart';

class NotesProvider with ChangeNotifier {
  List<NotesListModel> _items = [
    NotesListModel(
      'عشق یه چیزی مثه کشک و دوغه تموم زندگی پر از دروغه',
      DateTime.now(),
      'c',
    ),
    NotesListModel(
      'دختری بود زیبا و جمال او شد زبانزد همه در پی وصال او',
      DateTime.now(),
      'd',
    ),
  ];

  List<NotesListModel> get items {
    return [..._items];
  }

  void addNote() {
    //_items.add(value);
    notifyListeners();
  }
}