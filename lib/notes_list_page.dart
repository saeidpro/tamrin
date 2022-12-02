import 'package:flutter/material.dart';
import 'package:new_app/notes_list.dart';
import 'package:new_app/notes_list_item.dart';

class NotesListPage extends StatelessWidget {
  const NotesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          NOTES_LIST.map((it) => NotesListItem(it.text, it.date)).toList(),
    );
    // ListView.builder(
    //   itemCount: NOTES_LIST.length,
    //   itemBuilder: (context, index) {
    //     NOTES_LIST.map((it) => NotesListItem(it.text, it.date)).toList();
    //   },
    // );
  }
}
