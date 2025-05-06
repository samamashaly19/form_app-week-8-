import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void toggleDarkMode(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shades of Red',
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode ? AppTheme.darkTheme() : AppTheme.lightTheme(),
      home: HomeScreen(
        toggleDarkMode: toggleDarkMode,
        isDarkMode: _isDarkMode,
      ),
    );
  }
}