import 'package:flutter/material.dart';

import '../Screen/favorite_screen.dart';
import '../Screen/home_screen.dart';
import '../Screen/state_view_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': HomeScreen(), 'title': 'Home'},
    {'page': StateViewScreen(), 'title': 'States'},
    {'page': FavoriteScreen(), 'title': 'Favorites'}
  ];
  int SelectPageIndex = 0;

  void _SelectPage(int index) {
    setState(() {
      SelectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[SelectPageIndex]['title']),
      ),
      body: _pages[SelectPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _SelectPage,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.blue,
        currentIndex: SelectPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            // ignore: deprecated_member_use
            icon: Icon(Icons.home), title: Text('Home'),
          ),
          // ignore: deprecated_member_use
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.location_on_outlined),
              title: Text('State')),
          // ignore: deprecated_member_use
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.favorite),
              title: Text('favorite'))
        ],
      ),
    );
  }
}
