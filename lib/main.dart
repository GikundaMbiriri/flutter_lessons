import 'package:firstapp/pages/first_page.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        routes: {
          '/firstPage': (context) => FirstPage(),
          '/homePage': (context) => HomePage(),
          '/settingsPage': (context) => SettingsPage(),
        });
  }
}
