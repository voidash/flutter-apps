import 'package:flutter/material.dart';
import 'package:meals/screens/meal_list_screen.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final String id;
  final Color color;

  CategoryWidget(this.title, this.id, this.color);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, MealListScreen.routerName,arguments: {'id': this.id, 'title': this.title});
      }, //Navigator.pushNamed(); },
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [color.withOpacity(0.5), color]),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Text('$title',
                  style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)))),
    );
  }
}
