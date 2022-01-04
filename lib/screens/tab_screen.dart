import 'package:flutter/material.dart';
import 'package:shop_app/screens/favorites_screen.dart';

import './categories_screen.dart';


class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Meals"),
          
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Favorites",
              ),
            ],
          ),
          
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
