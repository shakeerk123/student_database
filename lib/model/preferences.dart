// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Preferences {
//   static SharedPreferences? preferences;
//   static const String themeSelect = 'key_theme';

//   static Future<void> init() async {
//     preferences = await SharedPreferences.getInstance();
//   }

//   static void saveTheme(ThemeData? selectedTheme) {
//     if (null != selectedTheme) {
//       // Convert ThemeData to JSON
//       final themeJson = jsonEncode(selectedTheme.toJson());
//       preferences?.setString(themeSelect, themeJson);
//     }
//   }

//   static ThemeData? loadTheme() {
//     final themeJson = preferences?.getString(themeSelect);
//     if (themeJson != null) {
//       // Decode JSON to ThemeData
//       final themeDataMap = jsonDecode(themeJson);
//       return ThemeData.from(jsonDecode(themeDataMap));
//     }
//     return null; // Return null if theme preference is not found
//   }
// }
