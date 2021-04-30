import 'package:flutter/material.dart';
import 'package:flutter_meal/data/mock_meals.dart';
import 'package:flutter_meal/models/meal.dart';
import 'package:flutter_meal/widgets/widgets.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = '/category-meals';
  // final String id;
  // final String title;

  // const CategoryMealsScreen({ 
  //   @required this.id,
  //   @required this.title, 
  // });
  Widget buildCategoryMeals() {

  }

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    print(routeArgs);
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];

    final List<Meal> categoryMeals = MEALS.where((meal) => meal.categories.contains(categoryId)).toList();
    print(categoryMeals);
    print(categoryMeals);

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: ListView.builder(
        itemBuilder: (context, index) => CategoryMealItem(meal: categoryMeals[index]),
        itemCount: categoryMeals.length,
      ),
    );
  }
}