import 'package:flutter/material.dart';
import 'package:new_app/apps_page.dart';
import 'package:new_app/favorites_page.dart';

class BottomTabsPage extends StatefulWidget {
  const BottomTabsPage({super.key});

  static const routeName = 'bottom-tabs-page';

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
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.file_open),label: 'باز کردن'),
          BottomNavigationBarItem(icon: Icon(Icons.folder),label: 'پوشه جدید'),
          BottomNavigationBarItem(icon: Icon(Icons.undo),label: 'بازگشت'),
          BottomNavigationBarItem(icon: Icon(Icons.delete),label: 'پاک کردن'),
          BottomNavigationBarItem(icon: Icon(Icons.backup),label: 'نسخه پشتیبان'),
        ],
      ),
    );
  }
}
