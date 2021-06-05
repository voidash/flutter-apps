import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import 'package:meals/widgets/appbar.dart';
import 'package:meals/widgets/meal_item.dart';

class MealListScreen extends StatelessWidget {
  static const routerName = 'mealList/';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final getMealsFromCategory =
        DUMMY_MEALS.where((data) => data.categories.contains(args['id']));

    return Scaffold(
        appBar: CustomAppBar(args['title']),
        body: ListView(
          children: 
            getMealsFromCategory.map((data) {
              return MealItem(data);
            }).toList()
          ,
        ));
  }
}
