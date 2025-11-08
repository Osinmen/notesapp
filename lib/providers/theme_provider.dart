import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  ThemeProvider () {
    loadTheme();

  }

  void loadTheme() async{
    final prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool('_isDarkMode') ?? false;
    notifyListeners();
  }

  void saveTheme() async{ 
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('_isDarkMode', _isDarkMode);
    notifyListeners();
  }
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
    
  }

