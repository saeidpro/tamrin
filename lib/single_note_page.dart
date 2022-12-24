import 'package:flutter/material.dart';
import 'package:new_app/default_app_bar.dart';

class SingleNotePage extends StatelessWidget {
  //SingleNotePage({super.key});

  //String text;

  //SingleNotePage(this.text);

  static const routeName = 'single-note-page';

  @override
  Widget build(BuildContext context) {
    TextEditingController previousText = TextEditingController();
    previousText.text = 'Hello';

    return Scaffold(
      appBar: DefaultAppBar(),
      body: TextField(
        controller: previousText,
      ),
    );
  }
}
