import 'package:flutter/material.dart';
import 'package:new_app/apps_page.dart';
import 'package:new_app/favorites_page.dart';

class BottomTabsPage extends StatefulWidget {
  const BottomTabsPage({super.key});

  @override
  State<BottomTabsPage> createState() => _BottomTabsPageState();
}

class _BottomTabsPageState extends State<BottomTabsPage> {
  final List<Widget> _pages = [
    AppsPage(),
    FavoritesPage(),
    FavoritesPage(),
    FavoritesPage(),
    FavoritesPage(),
  ];

  int _selectedPageIndex = 0;
    
  void _selectPage (int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      appBar: AppBar(title: Text('جعبه ابزار'),),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.file_open)),
          BottomNavigationBarItem(icon: Icon(Icons.folder)),
          BottomNavigationBarItem(icon: Icon(Icons.undo)),
          BottomNavigationBarItem(icon: Icon(Icons.delete)),
          BottomNavigationBarItem(icon: Icon(Icons.backup)),
        ],
      ),
    );
  }
}
