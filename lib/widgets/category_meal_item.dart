import 'package:flutter/material.dart';
import 'package:flutter_meal/models/models.dart';
import 'package:flutter_meal/screens/category_meal_detail_screen.dart';
import 'package:flutter_meal/widgets/widgets.dart';

class CategoryMealItem extends StatelessWidget {
  final Meal meal;

  const CategoryMealItem({ @required this.meal, });

  void _navigateToMealDetailScreen(BuildContext context) {
    Navigator
      .of(context)
      .pushNamed(CategoryMealDetailScreen.routeName, arguments: { 'id': meal.id });
  }

  Widget _buildCategoryMealFooter(BuildContext ctx) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(Icons.schedule, size: 14,),
              SizedBox(width: 6),
              Text('${meal.duration} mins')
            ],
          ),
          Row(
            children: [
              Icon(Icons.work, size: 14,),
              SizedBox(width: 6),
              Text(meal.getComplexity())
            ],
          ),
          Row(
            children: [
              Icon(Icons.attach_money, size: 14,),
              SizedBox(width: 2),
              Text(meal.getAffordability())
            ],
          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToMealDetailScreen(context),
      child: Card(
        margin: EdgeInsets.all(15),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            ImageCaption(imageUrl: meal.imageUrl, caption: meal.title),
            _buildCategoryMealFooter(context)
          ]
        ),
      ),
    );
  }
}