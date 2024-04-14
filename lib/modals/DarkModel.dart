import 'package:flutter/material.dart';

class DarkModel extends ChangeNotifier{
  bool _isDark=false;

  bool get isDark=>_isDark;
  toggle(){
    _isDark=!_isDark;
    notifyListeners();
  }
}