import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget buildListTiles(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        //...
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 35,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
          ),
          Container(
            child: Image.asset('assets/images/logo.png'),
            height: 140,
            width: double.infinity,
            color: Theme.of(context).primaryColor.withOpacity(0.5),
            padding: EdgeInsets.all(12),
          ),
          buildListTiles('درباره ما', Icons.info),
          buildListTiles('ارتباط با ما', Icons.email),
          buildListTiles('به اشتراک گذاشتن', Icons.share),
          buildListTiles('امتیاز به برنامه', Icons.star),
          buildListTiles('به روز رسانی', Icons.update),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'پشتیبانی: 02184215701'.toPersianDigit(),
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
