import 'package:flutter/material.dart';

class AppItems extends StatelessWidget {
  //const AppItems({super.key});

  final Icon iconItem;
  final String iconTitle;
  final VoidCallback iconFunction;

  AppItems(this.iconItem, this.iconTitle, this.iconFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(children: [IconButton(onPressed: iconFunction, icon: iconItem), Text(iconTitle)]),
    );
  }
}