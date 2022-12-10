import 'package:flutter/material.dart';
import 'package:new_app/apps_page.dart';
import 'package:new_app/default_app_bar.dart';
import 'package:new_app/favorites_page.dart';
import 'package:new_app/notes_list_page.dart';
import 'package:new_app/single_note_page.dart';

enum OptionsValue {
  newNote,
  newFolder,
  moveToFolder,
  delete,
  backup,
  restoringBackup,
}

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

  newListTile(IconData icon, String title) {
    return ListTile(
      visualDensity: VisualDensity(vertical: -4, horizontal: 0),
      dense: true,
      minVerticalPadding: 0,
      horizontalTitleGap: 10,
      minLeadingWidth: 0,
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        icon,
        color: Colors.white,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //_pages[_selectedPageIndex],
      //SingleNotePage(),
      NotesListPage(),
      appBar: DefaultAppBar(),
      //appBar: AppBar(title: Text('جعبه ابزار'),),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
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
