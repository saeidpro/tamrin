import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import './notes_provider.dart';
import './favorites_page.dart';
import './notes_page.dart';
import './single_note_page.dart';
import './bottom_tabs_page.dart';
import './tabs_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final MaterialColor mycolor = MaterialColor(
    Color.fromRGBO(0, 140, 123, 1).value,
    <int, Color>{
      50: Color.fromRGBO(0, 140, 123, 0.1),
      100: Color.fromRGBO(0, 140, 123, 0.2),
      200: Color.fromRGBO(0, 140, 123, 0.3),
      300: Color.fromRGBO(0, 140, 123, 0.4),
      400: Color.fromRGBO(0, 140, 123, 0.5),
      500: Color.fromRGBO(0, 140, 123, 0.6),
      600: Color.fromRGBO(0, 140, 123, 0.7),
      700: Color.fromRGBO(0, 140, 123, 0.8),
      800: Color.fromRGBO(0, 140, 123, 0.9),
      900: Color.fromRGBO(0, 140, 123, 1),
    },
  );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => NotesProvider(),
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fa', ''),
        ],
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: mycolor,
          //accentColor: Colors.blueGrey,
        ),
        home: TabsPage(),
        routes: {
          BottomTabsPage.routeName: (context) => BottomTabsPage(),
          NotesPage.routeName:(context) => NotesPage(),
          FavoritesPage.routeName:(context) => FavoritesPage(),
          SingleNotePage.routeName:(context) => SingleNotePage(),
        },
        //home: BottomTabsPage(),
      ),
    );
  }
}