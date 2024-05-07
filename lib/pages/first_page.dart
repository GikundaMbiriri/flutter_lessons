import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/pages/profile_page.dart';
import 'package:firstapp/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIdex = 0;

  void _navigateBottonBar(int index) {
    setState(() {
      _selectedIdex = index;
    });
  }

  final List _pages = [HomePage(), ProfilePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
      ),
      body: _pages[_selectedIdex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIdex,
        onTap: _navigateBottonBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
