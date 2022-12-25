import 'package:flutter/material.dart';
import 'package:new_app/default_app_bar.dart';
import 'package:new_app/notes_list_model.dart';
import 'package:new_app/notes_provider.dart';
import 'package:provider/provider.dart';

class SingleNotePage extends StatefulWidget {
  static const routeName = 'single-note-page';

  @override
  State<SingleNotePage> createState() => _SingleNotePageState();
}

class _SingleNotePageState extends State<SingleNotePage> {
  final _textController = TextEditingController();
  var _isInit = true;

  var _editedNote = NotesListModel('', DateTime.now(), '');
  // var _initValues = {
  //   'text': '',
  //   'date': 
  // }

  TextEditingController previousText = TextEditingController();

  @override
  void didChangeDependencies() {
    if (_isInit) {
      final noteId = ModalRoute.of(context)?.settings.arguments as String;
      if (noteId != null) {
        final notes = Provider.of<NotesProvider>(context);
        final _editedNote = notes.items.firstWhere((note) => note.id == noteId);
        previousText.text = _editedNote.text;
      }
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    //TextEditingController previousText = TextEditingController();
    //previousText.text = widget.loadedNote.text;
    //previousText = _editedNote.text;

    return Scaffold(
      appBar: DefaultAppBar(),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFDF6DD), Color(0xFFFEF1C6)],
            ),
          ),
          child: TextField(
            minLines: 39,
            maxLines: 100,
            controller: previousText,
            decoration: const InputDecoration(border: InputBorder.none),
            //style: TextStyle(backgroundColor: ),
          ),
        ),
      ),
    );
  }
}
