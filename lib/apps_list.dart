import 'package:flutter/material.dart';
import 'package:new_app/favorites_page.dart';
import 'package:new_app/notes_page.dart';

//import './dummy_page.dart';
import './app_model.dart';
import './bottom_tabs_page.dart';

final APPS_LIST = [
  AppModel(Image.asset('assets/images/1.png'), 'پرداخت یار', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/2.png'), 'دستیار سلامت', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/3.png'), 'ویدئو گردی', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/4.png'), 'اینستا دانلودر', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/5.png'), 'پیشخوان', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/6.png'), 'دستیار مالی', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/7.png'), 'ارسال برنامه', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/8.png'), 'اطراف من', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/9.png'), 'ناظر سیستم', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/10.png'), 'چراغ', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/11.png'), 'برنامه زمانی', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/12.png'), 'دفترچه یادداشت', NotesPage.routeName),
  AppModel(Image.asset('assets/images/13.png'), 'رویداد نگار', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/14.png'), 'ماشین حساب', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/15.png'), 'مساحت و حجم', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/16.png'), 'تراز', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/17.png'), 'متراژ', FavoritesPage.routeName),
  AppModel(Image.asset('assets/images/18.png'), 'نقاله', FavoritesPage.routeName),
];
