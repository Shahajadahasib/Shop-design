// import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class ThemePref {
  static const themData = 'them_Data';
  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themData, value);
  }

  Future<bool> getDarkTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(
          themData,
        ) ??
        false;
  }
}




// class ThemePref {
//   static const themeData = "themedata";
//   setDarkPref(bool value) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool(themeData, value);
//   }

//   Future<bool> getDarkPref() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getBool(
//           themeData,
//         ) ??
//         false;
//   }
// }




















// import 'package:shared_preferences/shared_preferences.dart';

// class DarkModePref {
//   static const THEME_STATUS = "THEMESTATUS";

//   setpref(bool value) async {
//     log('2');
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool(THEME_STATUS, value);
//   }

//   Future<bool> getpref() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     log('1');
//     return prefs.getBool(THEME_STATUS) ?? false;
//   }
// }
