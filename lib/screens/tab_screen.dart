import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../screens/favorites_screen.dart';
import '../widgets/main_drawer.dart';

import './categories_screen.dart';

class TabsScreen extends StatelessWidget {
  final List<Meal> favoriteMeal;

  TabsScreen(this.favoriteMeal);


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
            FavoritesScreen(favoriteMeal),
          ],
        ),
        drawer: MainDrawer(),
      ),
    );
  }
}
