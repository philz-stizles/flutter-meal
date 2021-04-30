import 'package:flutter/material.dart';
import 'package:flutter_meal/screens/screens.dart';

class HomeTabsScreen extends StatefulWidget {
  @override
  _HomeTabsScreenState createState() => _HomeTabsScreenState();
}

class _HomeTabsScreenState extends State<HomeTabsScreen> {
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
          BottomNavigationBarItem(),
          BottomNavigationBarItem()
        ]
      ),
    );
  }
}