import 'package:flutter/material.dart';
import 'package:flutter_meal/screens/screens.dart';

class HomeAppbarTabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0, // Index starts fom 0. This indicates which of the screens in 
      // the TabBarView you want to display on initialization (Default is 0)
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals', textAlign: TextAlign.center,),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.category), text: 'Categories',),
            Tab(icon: Icon(Icons.star,), text: 'Favorites'),
          ],),
        ),
        body: TabBarView(
          children: [
            CategoriesTabScreen(),
            FavoritesTabScreen()
          ]
        ),
      ),
    );
  }
}