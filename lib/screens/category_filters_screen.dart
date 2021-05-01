import 'package:flutter/material.dart';
import 'package:flutter_meal/widgets/widgets.dart';

class CategoryFiltersScreen extends StatefulWidget {
  static const String routeName = '/category-filters';
  final Function saveFilterOptions;

  const CategoryFiltersScreen({ this.saveFilterOptions });
  
  @override
  _CategoryFiltersScreenState createState() => _CategoryFiltersScreenState();
}

class _CategoryFiltersScreenState extends State<CategoryFiltersScreen> {
  final Map<String, bool> _filterOptions = {
    'glutenFree': false,
    'vegetarian': false,
    'vegan': false,
    'lactoseFree': false
  };

  void _setFilterOption(String name, bool val) {
    setState(() {
      _filterOptions[name] = val;
    });
    print(_filterOptions);
  }

  void _saveFilterOption() {
    widget.saveFilterOptions(_filterOptions);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: [
          IconButton(
            icon: Icon(Icons.save), 
            onPressed: _saveFilterOption
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Adjust your meal selection', style: Theme.of(context).textTheme.headline6,)
          ),
          Expanded(child: ListView(
            children: [
              SwitchListTile(
                value: _filterOptions['glutenFree'], 
                title: Text('Gluten-free'),
                subtitle: Text('Only include gluten-free meals'),
                onChanged: (val) => _setFilterOption('glutenFree', val)
              ),
              SwitchListTile(
                value: _filterOptions['vegetarian'], 
                title: Text('Vegetarian'),
                subtitle: Text('Only include vegetarian meals'),
                onChanged: (val) => _setFilterOption('vegetarian', val)
              ),
              SwitchListTile(
                value: _filterOptions['vegan'], 
                title: Text('Vegan'),
                subtitle: Text('Only include vegan meals'),
                onChanged: (val) => _setFilterOption('vegan', val)
              ),
              SwitchListTile(
                value: _filterOptions['lactoseFree'], 
                title: Text('Lactose-free'),
                subtitle: Text('Only include lactose-free meals'),
                onChanged: (val) => _setFilterOption('lactoseFree', val)
              )
            ],
          ))
        ]
      ),
    );
  }
}