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
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
      child: InkWell(
        onTap: () {},
        //splashColor: Colors.orange,
        highlightColor: Color(0xFFF8D8A9),
        child: Ink(
            height: 70,
            padding: EdgeInsets.all(3),
            //margin: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 25,
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
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
    );
  }
}
