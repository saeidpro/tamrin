import 'package:flutter/material.dart';
import 'package:new_app/default_app_bar.dart';
import 'package:new_app/notes_provider.dart';
import 'package:provider/provider.dart';

class SingleNotePage extends StatelessWidget {
  //SingleNotePage({super.key});

  //String text;

  //SingleNotePage(this.text);


  static const routeName = 'single-note-page';

  @override
  Widget build(BuildContext context) {
    final noteId = ModalRoute.of(context)?.settings.arguments as String;

    final notes = Provider.of<NotesProvider>(context);
    final loadedNote = notes.items.firstWhere((note) => note.id == noteId);

    TextEditingController previousText = TextEditingController();
    previousText.text = loadedNote.text;

    return Scaffold(
      appBar: DefaultAppBar(),
      body: TextField(
        controller: previousText,
      ),
    );
  }
}
