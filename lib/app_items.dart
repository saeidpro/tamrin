import 'package:flutter/material.dart';
import 'package:new_app/bottom_tabs_page.dart';

import './dummy_page.dart';

class AppItems extends StatelessWidget {
  final Image iconItem;
  final String iconTitle;
  final VoidCallback iconFunction;

  AppItems(this.iconItem, this.iconTitle, this.iconFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: IconButton(
              onPressed: () => Navigator.of(context).pushNamed(BottomTabsPage.routeName),
              // () => Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (_) {
              //       return BottomTabsPage();
              //     },
              //   ),
              // ), //iconFunction,
              icon: iconItem,
              iconSize: 70,
            ),
          ),
          Text(iconTitle),
          //SizedBox(height: 10),
        ],
      ),
    );
  }
}
