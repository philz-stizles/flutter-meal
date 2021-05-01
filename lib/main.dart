import 'package:flutter/material.dart';
import 'package:flutter_meal/routes.dart';
import 'package:flutter_meal/screens/screens.dart';

import 'data/mock_meals.dart';
import 'models/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filterOptions = {
    'glutenFree': false,
    'vegetarian': false,
    'vegan': false,
    'lactoseFree': false
  };

  List<Meal> _availableMeals = MEALS;
  List<Meal> _favoriteMeals = [];

  void _setFilterOptions(Map<String, bool> filterOptions) {
    setState(() {
      _filterOptions = filterOptions;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Inter',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(fontSize: 12, color: Color.fromRGBO(20, 51, 51, 1)),
          bodyText2: TextStyle(fontSize: 12, color: Color.fromRGBO(20, 51, 51, 1)), // Default for Text() Widget
          headline6: TextStyle(fontSize: 18, fontFamily: 'Overpass', fontWeight: FontWeight.bold)
        )
      ),
      initialRoute: '/',
      // home: CategoriesScreen(),
      routes: buildRoutes(_availableMeals, _favoriteMeals, _setFilterOptions),
      onGenerateRoute: (settings) {
        // settings.arguments
        // settings.name
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
      },
      onUnknownRoute: (settings) {
        // settings.arguments
        // settings.name
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
      },
    );
  }
}
