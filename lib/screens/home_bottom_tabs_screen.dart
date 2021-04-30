import 'package:flutter/material.dart';

class HomeBottomTabsScreen extends StatefulWidget {
  @override
  _HomeBottomTabsScreenState createState() => _HomeBottomTabsScreenState();
}

class _HomeBottomTabsScreenState extends State<HomeBottomTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals', textAlign: TextAlign.center,),
      ),
      body: null,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category), label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star,), label: 'Favorites'
          )
        ]
      ),
    );
  }
}