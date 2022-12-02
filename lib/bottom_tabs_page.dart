import 'package:flutter/material.dart';
import 'package:new_app/apps_page.dart';
import 'package:new_app/favorites_page.dart';

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
      body: _pages[_selectedPageIndex],
      appBar: AppBar(actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.push_pin)),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        PopupMenuButton(
            color: Color.fromARGB(255, 15, 15, 15),
            onSelected: (value) {},
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
                  PopupMenuItem(
                    height: 10,
                    value: OptionsValue.newNote,
                    child: //newListTileRow(Icons.add_rounded, 'یادداشت جدید'),
                        //newIconButton(Icons.add_rounded, 'یادداشت جدید'),
                        newListTile(Icons.add_rounded, 'یادداشت جدید'),                        
                  ),
                  PopupMenuItem(
                    height: 10,
                    value: OptionsValue.newFolder,
                    child: //newListTileRow(Icons.create_new_folder, 'پوشه جدید'),
                    //newIconButton(Icons.create_new_folder, 'پوشه جدید'),
                        newListTile(Icons.create_new_folder, 'پوشه جدید'),
                  ),
                  PopupMenuItem(
                    height: 10,
                    value: OptionsValue.moveToFolder,
                    child: //newListTileRow(Icons.undo, 'انتفال به پوشه'),
                    newListTile(Icons.undo, 'انتفال به پوشه'),
                  ),
                  PopupMenuItem(
                    height: 10,
                    value: OptionsValue.delete,
                    child: //newListTileRow(Icons.delete, 'حذف'),
                    newListTile(Icons.delete, 'حذف'),
                  ),
                  PopupMenuItem(
                    height: 20,
                    value: OptionsValue.backup,
                    child: //newListTileRow(Icons.backup, 'پشتیبان گیری')
                    newListTile(Icons.backup, 'پشتیبان گیری'),
                  ),
                  PopupMenuItem(
                    height: 20,
                    value: OptionsValue.restoringBackup,
                    child: //newListTileRow(Icons.settings_backup_restore, 'بازیابی پشتیبان'),
                     newListTile(Icons.settings_backup_restore, 'بازیابی پشتیبان'),
                  ),
                ]),
      ]),
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
