import 'package:flutter/material.dart';

class AppModel {
  final Icon icon;
  final String title;
  final VoidCallback func;

  AppModel(this.icon, this.title, this.func);
}