  import 'package:facebook_lite_ui_app/shared_preference/theme_shared_preference.dart';
import 'package:flutter/material.dart';

  class DarkThemeProvider with ChangeNotifier{

    ThemeSharedPreference themeSharedPreference=ThemeSharedPreference();
  bool _darkTheme=false;

  bool get darkTheme=>_darkTheme;

  set darkTheme(bool value){
    _darkTheme=value;
    themeSharedPreference.setDarkTheme(value);
    notifyListeners();
  }
  }