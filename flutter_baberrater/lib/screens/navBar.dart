import 'package:flutter/material.dart';
import './AI_screen.dart';
import './barber_profile.dart';
import './map.dart';
import './feed.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  static const routeName = '/navBar';

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  final List<Map<String, Object>> _pages = const [
    {'page': feed_Screen(), 'title': 'FEED'},
    {'page': AI_screen(), 'title': 'AI'},
    {'page': map_Screen(), 'title': 'MAP'},
    {'page': barber_profile(), 'title': 'PROFILE'}
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        showUnselectedLabels: true,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Feed'),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: 'AI'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'MAP'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE')
        ],
      ),
    );
  }
}
