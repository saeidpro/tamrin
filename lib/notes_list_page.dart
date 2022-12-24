import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './notes_list.dart';
import './notes_list_item.dart';
import './notes_provider.dart';

class NotesListPage extends StatelessWidget {
  const NotesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final notesData = Provider.of<NotesProvider>(context);
    final notes = notesData.items;
    return ListView(
      children:
          notes.map((it) => NotesListItem(it.text, it.date, it.id)).toList(),
          //NOTES_LIST.map((it) => NotesListItem(it.text, it.date, it.id)).toList(),
    );
    // ListView.builder(
    //   itemCount: NOTES_LIST.length,
    //   itemBuilder: (context, index) {
    //     NOTES_LIST.map((it) => NotesListItem(it.text, it.date)).toList();
    //   },
    // );
  }
}
