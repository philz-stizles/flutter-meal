import 'package:flutter/material.dart';
import 'package:flutter_meal/screens/screens.dart';

void _navigateToCategoryFiltersScreen(BuildContext ctx) {
  Navigator
    .of(ctx)
    .pushReplacementNamed(CategoryFiltersScreen.routeName);
}

void _navigateToCategoriesScreen(BuildContext ctx) {
  Navigator
    .of(ctx)
    .pushReplacementNamed('/');
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColorLight,
            child: Text('MENU', style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Theme.of(context).primaryColor
            ),),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(
              Icons.restaurant, 
              size: 26,
            ),
            title: Text(
              'Categories', 
              style:  TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold
              ),
            ),
            onTap: () => _navigateToCategoriesScreen(context),
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 26,),
            title: Text('Filters', style:  TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            onTap: () => _navigateToCategoryFiltersScreen(context),
          )
        ],
      ),
    );
  }
}