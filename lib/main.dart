import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:new_app/apps_page.dart';
import 'package:new_app/bottom_tabs_page.dart';
import 'package:new_app/tabs_page.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

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
    return MaterialApp(
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
      },
      //home: BottomTabsPage(),
    );
  }
}