import 'package:flutter/material.dart';
import 'package:new_app/default_app_bar.dart';
import 'package:new_app/notes_list_page.dart';

// enum OptionsValue {
//   newNote,
//   newFolder,
//   moveToFolder,
//   delete,
//   backup,
//   restoringBackup,
// }

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  static const routeName = '/notes-page';

  // newListTile(IconData icon, String title) {
  //   return ListTile(
  //     visualDensity: VisualDensity(vertical: -4, horizontal: 0),
  //     dense: true,
  //     minVerticalPadding: 0,
  //     horizontalTitleGap: 10,
  //     minLeadingWidth: 0,
  //     contentPadding: EdgeInsets.zero,
  //     leading: Icon(
  //       icon,
  //       color: Colors.white,
  //       size: 26,
  //     ),
  //     title: Text(
  //       title,
  //       style: TextStyle(
  //         color: Colors.white,
  //         fontSize: 16,
  //       ),
  //     ),
  //   );
  // }

  // newIconButton(IconData icon, String title) {
  //   return TextButton.icon(
  //     onPressed: () {},
  //     icon: Icon(icon),
  //     label: Text(title),
  //     style: ButtonStyle(
  //         padding: MaterialStateProperty.all(EdgeInsets.all(0)),
  //         fixedSize: MaterialStateProperty.all(Size(double.infinity, 1))),
  //   );
  // }

  // newListTileRow (IconData icon, String title) {
  //   return Row(children: [
  //     Icon(icon, color: Colors.white, size: 18,),
  //     SizedBox(width: 10,),
  //     Text(title, style: const TextStyle(color: Colors.white, fontSize: 14),),
  //   ],);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesListPage(),
      appBar: DefaultAppBar(),
    );
  }
}
