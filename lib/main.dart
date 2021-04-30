import 'package:flutter/material.dart';
import 'package:flutter_meal/routes.dart';
import 'package:flutter_meal/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
      routes: routes,
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
