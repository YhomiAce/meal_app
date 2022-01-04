import 'package:flutter/material.dart';

import '../screens/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    // Step 1
    // Navigator.of(ctx).push(
    //   MaterialPageRoute(builder: (_) {
    //     return CategoryMealScreen(id, title);
    //   }),
    // );

    // Step 2
    Navigator.of(ctx).pushNamed(
      // "/category-meal", OR
      CategoryMealScreen.routeName,
      arguments: {
        'id': id,
        "title": title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
