import 'package:flutter/material.dart';
import 'package:new_app/notes_page.dart';

//import './dummy_page.dart';
import './app_model.dart';
import './bottom_tabs_page.dart';

final APPS_LIST = [
  AppModel(Image.asset('assets/images/1.png'), 'پرداخت یار', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/2.png'), 'دستیار سلامت', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/3.png'), 'ویدئو گردی', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/4.png'), 'اینستا دانلودر', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/5.png'), 'پیشخوان', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/6.png'), 'دستیار مالی', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/7.png'), 'ارسال برنامه', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/8.png'), 'اطراف من', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/9.png'), 'ناظر سیستم', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/10.png'), 'چراغ', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/11.png'), 'برنامه زمانی', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/12.png'), 'دفترچه یادداشت', NotesPage.routeName),
  AppModel(Image.asset('assets/images/13.png'), 'رویداد نگار', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/14.png'), 'ماشین حساب', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/15.png'), 'مساحت و حجم', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/16.png'), 'تراز', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/17.png'), 'متراژ', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/18.png'), 'نقاله', BottomTabsPage.routeName),
];
