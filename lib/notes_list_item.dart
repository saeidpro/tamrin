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
    return Container(
      height: 70,
      child: InkWell(
        onTap: () {},
        highlightColor: Colors.orange,
        splashColor: Colors.black,
        focusColor: Colors.orange,
        hoverColor: Colors.blue,
        child: Card(
          //color: Color.fromARGB(255, 255, 249, 194),
          elevation: 5,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFDF6DD), Color(0xFFFEF1C6)],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 300,
                  child: Text(
                    shortText,
                    style: TextStyle(fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  shortDate.toPersianDate().toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
