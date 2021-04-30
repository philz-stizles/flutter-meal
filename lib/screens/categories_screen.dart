import 'package:flutter/material.dart';
import 'package:flutter_meal/data/mock_categories.dart';
import 'package:flutter_meal/widgets/widgets.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meal Categories'),),
      body: GridView(
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, // Max width of the items
          childAspectRatio: 3 / 2, // how the items should be sized
          crossAxisSpacing: 15,  // cross axis spacing between items 
          mainAxisSpacing: 15,   // main axis spacing between items 
        ),
        children: CATEGORIES.map((category) => CategoryItem(id: category.id, title: category.title, color: category.color)).toList(),
      ),
    );
  }
}