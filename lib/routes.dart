import 'package:flutter/material.dart';

import 'screens/screens.dart';

// final Map<String, WidgetBuilder> routes = {
//   // '/': (context) => CategoriesScreen(),
//   '/': (context) => HomeBottomTabsScreen(),
//   CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
//   CategoryMealDetailScreen.routeName: (context) => CategoryMealDetailScreen(),
//   CategoryFiltersScreen.routeName: (context) => CategoryFiltersScreen(),
// };
// 

Map<String, WidgetBuilder> buildRoutes(availableMeals, favoriteMeals, saveFilterOptions) {
  return {
    // '/': (context) => CategoriesScreen(),
    '/': (context) => HomeBottomTabsScreen(favoriteMeals: favoriteMeals),
    CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
    CategoryMealDetailScreen.routeName: (context) => CategoryMealDetailScreen(),
    CategoryFiltersScreen.routeName: (context) => CategoryFiltersScreen(saveFilterOptions: saveFilterOptions),
  };
}