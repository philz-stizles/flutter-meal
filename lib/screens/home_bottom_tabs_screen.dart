import 'package:flutter/material.dart';
import 'package:flutter_meal/screens/screens.dart';
import 'package:flutter_meal/widgets/widgets.dart';

class HomeBottomTabsScreen extends StatefulWidget {
  @override
  _HomeBottomTabsScreenState createState() => _HomeBottomTabsScreenState();
}

class _HomeBottomTabsScreenState extends State<HomeBottomTabsScreen> {
  final List<Map<String, Object>> _tabScreens = [
    {'title': 'Categories', 'screen': CategoriesTabScreen() },
    {'title': 'Favorites', 'screen': FavoritesTabScreen() }
  ];
  var _selectedScreenIndex = 0;

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tabScreens[_selectedScreenIndex]['title'], textAlign: TextAlign.center,),
      ),
      drawer: MainDrawer(),
      body: _tabScreens[_selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,

        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category), label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star,), label: 'Favorites'
          )
        ]
      ),
    );
  }
}