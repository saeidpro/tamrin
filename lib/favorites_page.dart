import 'package:flutter/material.dart';
import 'package:new_app/default_app_bar.dart';

import './notes_page.dart';

class FavoritesPage extends StatelessWidget {
  //AppBar defAppBar;

  const FavoritesPage({super.key});

  static const routeName = 'favorites-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Center(
        child: Text('در حال توسعه'),
      ),
    );
  }
}
