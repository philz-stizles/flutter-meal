import 'package:flutter/material.dart';

import 'screens/screens.dart';

final Map<String, WidgetBuilder> routes = {
  // '/': (context) => CategoriesScreen(),
  '/': (context) => HomeAppbarTabsScreen(),
  CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
  CategoryMealDetailScreen.routeName: (context) => CategoryMealDetailScreen(),
};