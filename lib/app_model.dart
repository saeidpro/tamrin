import 'package:flutter/material.dart';

class AppModel {
  final Image icon;
  final String title;
  final VoidCallback func;

  AppModel(this.icon, this.title, this.func);
}