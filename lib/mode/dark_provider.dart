import 'package:flutter/material.dart';

import 'dark_pref.dart';

class ThemeProvider with ChangeNotifier {
  ThemePref themePref = ThemePref();
  bool _darkTheme = false;
  bool get getdarkTheme => _darkTheme;

  set setDarkTheme(bool value) {
    _darkTheme = value;
    themePref.setDarkTheme(value);
    notifyListeners();
  }
}













// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:online_site/mode/dark_pref.dart';

// class DarkProvider with ChangeNotifier {
//   DarkModePref darkModePref = DarkModePref();
//   bool _isdark = false;

//   bool get getdarktheme {
//     return _isdark;
//   }

//   set setDarkTheme(bool value) {
//     log(_isdark.toString());
//     _isdark = value;
//     darkModePref.setpref(value);
//     notifyListeners();
//   }
// }
