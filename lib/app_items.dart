import 'package:flutter/material.dart';

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
              onPressed: iconFunction,
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
