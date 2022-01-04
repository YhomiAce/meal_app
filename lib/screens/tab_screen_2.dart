import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

import './categories_screen.dart';
import './favorites_screen.dart';

class TabsScreenSceond extends StatefulWidget {
  @override
  _TabsScreenSceondState createState() => _TabsScreenSceondState();
}

class _TabsScreenSceondState extends State<TabsScreenSceond> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavoritesScreen(), 'title': 'Your Favorites'},
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
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            backgroundColor: Theme.of(context).primaryColor,
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
