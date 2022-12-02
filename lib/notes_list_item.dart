import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class NotesListItem extends StatelessWidget {
  //const NotesListItem({super.key});

  final String shortText;
  final DateTime shortDate;

  NotesListItem(this.shortText, this.shortDate);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 255, 249, 194),
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(shortText, style: TextStyle(fontSize: 20))),
          Text(
            shortDate.toPersianDate().toString(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
