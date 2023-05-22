import 'package:flutter/material.dart';
import 'package:flutter_baberrater/widgets/googlemaps.dart';
import './AI_screen.dart';
import './shop_profile.dart';
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
    {'page': MapSample(), 'title': 'MAP'},
    {'page': shop_profile(), 'title': 'PROFILE'}
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
        actions: [
          if (_selectedPageIndex == 3)
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          // if (_selectedPageIndex == 0)
          //   IconButton(
          //       onPressed: () {
          //         _openAddPostOverlay(context);
          //       },
          //       icon: const Icon(Icons.add)),
        ],
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
