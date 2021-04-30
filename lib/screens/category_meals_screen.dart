import 'package:flutter/material.dart';
import 'package:flutter_meal/data/mock_meals.dart';
import 'package:flutter_meal/models/meal.dart';
import 'package:flutter_meal/widgets/widgets.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const String routeName = '/category-meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> categoryMeals;

  @override
  void initState() {
    // You cannot operate with context in initState() because it runs to quickly, 
    // context is not built yet at this time
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final categoryId = routeArgs['id'];
    categoryTitle = routeArgs['title'];

    categoryMeals = MEALS.where((meal) => meal.categories.contains(categoryId)).toList();
    super.didChangeDependencies();
  }


  void _removeMeal(id) {
    setState(() {
      categoryMeals.removeWhere((m) => m.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: ListView.builder(
        itemBuilder: (context, index) => CategoryMealItem(meal: categoryMeals[index], removeMeal: _removeMeal,),
        itemCount: categoryMeals.length,
      ),
    );
  }
}