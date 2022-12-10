import 'package:flutter/material.dart';

class SingleNotePage extends StatelessWidget {
  const SingleNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController previousText = TextEditingController();
    previousText.text = 'Hello';

    return TextField(
      controller: previousText,
      
    );
  }
}
