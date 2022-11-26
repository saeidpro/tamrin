import 'package:flutter/material.dart';

import './dummy_page.dart';
import './app_model.dart';
import './bottom_tabs_page.dart';

final APPS_LIST = [
  AppModel(Image.asset('assets/images/1.png'), 'پرداخت یار', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/2.png'), 'دستیار سلامت', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/3.png'), 'ویدئو گردی', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/4.png'), 'اینستا دانلودر', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/5.png'), 'پیشخوان', BottomTabsPage.routeName),
  AppModel(Image.asset('assets/images/6.png'), 'دستیار مالی', BottomTabsPage.routeName),
];
