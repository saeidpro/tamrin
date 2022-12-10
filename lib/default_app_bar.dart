import 'package:flutter/material.dart';

enum OptionsValue {
  newNote,
  newFolder,
  moveToFolder,
  delete,
  backup,
  restoringBackup,
}

class DefaultAppBar extends StatelessWidget with PreferredSizeWidget{

  @override
  final Size preferredSize;

  DefaultAppBar(): preferredSize = Size.fromHeight(50), super ();

  //const DefaultAppBar({super.key});

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
    return AppBar(actions: [
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
      ]);
  }
}