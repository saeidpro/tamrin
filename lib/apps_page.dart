import 'package:flutter/material.dart';

import './app_items.dart';
import './apps_list.dart';

class AppsPage extends StatelessWidget {
  const AppsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        //padding: EdgeInsets.all(15),
        children: APPS_LIST
            .map((appData) => AppItems(
                  appData.icon,
                  appData.title,
                  appData.func,
                ))
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          //mainAxisSpacing: 1,
        ),
      );
  }
}
