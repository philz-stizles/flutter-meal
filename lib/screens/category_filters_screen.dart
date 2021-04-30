import 'package:flutter/material.dart';
import 'package:flutter_meal/widgets/widgets.dart';

class CategoryFiltersScreen extends StatefulWidget {
  static const String routeName = '/category-filters';
  
  @override
  _CategoryFiltersScreenState createState() => _CategoryFiltersScreenState();
}

class _CategoryFiltersScreenState extends State<CategoryFiltersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters'),),
      drawer: MainDrawer(),
      body: Container(
        child: Center(
          child: Text('Filters')
        ),
      ),
    );
  }
}