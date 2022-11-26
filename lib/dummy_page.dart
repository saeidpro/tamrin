import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('آزمایش')),
        body: Center(
          child: Text('آزمایش می‌کنیم'),
        ));
  }
}
