import 'package:flutter/material.dart';
import 'package:new_app/apps_page.dart';
import 'package:new_app/favorites_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 7,
        child: Scaffold(
          body: TabBarView(children: [
            AppsPage(),
            FavoritesPage(),
            FavoritesPage(),
            FavoritesPage(),
            FavoritesPage(),
            FavoritesPage(),
            FavoritesPage(),
          ],),
          appBar: AppBar(
            title: Text('جعبه ابزار'),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'همه‌ی ابزارها'),
                Tab(text: 'مورد علاقه'),
                Tab(text: 'مهندسی'),
                Tab(text: 'مالتی مدیا'),
                Tab(text: 'مبدل‌ها'),
                Tab(text: 'اندازه‌گیری'),
                Tab(text: 'دیگر'),
              ],
            ),
          ),
        ));
  }
}
