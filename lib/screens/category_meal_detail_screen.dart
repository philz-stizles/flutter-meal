import 'package:flutter/material.dart';
import 'package:flutter_meal/data/mock_meals.dart';
import 'package:flutter_meal/models/meal.dart';

class CategoryMealDetailScreen extends StatelessWidget {
  static const String routeName = '/category-meal-detail';
  // final String id;
  // final String title;

  // const CategoryMealDetailScreen({ 
  //   @required this.id,
  //   @required this.title, 
  // });
  
  Widget _buildImageHeader(BuildContext ctx, imageUrl) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Image.network(imageUrl, fit: BoxFit.cover,)
    );
  }

  Widget _buildSectionHeading(BuildContext ctx, text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(text, style: Theme.of(ctx).textTheme.headline6),
    );
  }

  Widget _buildIngredients(BuildContext ctx, ingredients) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) => Card(
          color: Theme.of(ctx).accentColor,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(ingredients[index]),
          ),
        ),
        itemCount: ingredients.length,
      ),
    );
  }

  Widget _buildSteps(BuildContext ctx, data) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) => Column(
          children: [
            ListTile(
              leading: CircleAvatar(child: Text('#${index + 1}', style: TextStyle(fontSize: 12),),),
              title: Text(data[index], style: TextStyle(fontSize: 12),),
            ),
            Divider()
          ],
        ),
        itemCount: data.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final categoryId = routeArgs['id'];

    final Meal meal = MEALS.firstWhere((meal) => meal.id == categoryId);

    return Scaffold(
      appBar: AppBar(title: Text(meal.title),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildImageHeader(context, meal.imageUrl),
            _buildSectionHeading(context, 'Ingredients'),
            _buildIngredients(context, meal.ingredients),
            _buildSectionHeading(context, 'Steps'),
            _buildSteps(context, meal.steps),
          ],
        ),
      )
    );
  }
}