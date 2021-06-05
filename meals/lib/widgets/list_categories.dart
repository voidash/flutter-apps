import 'package:flutter/material.dart';
import '../dummy_data.dart';
import 'category_widget.dart';


class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        padding: EdgeInsets.all(10),
        children: DUMMY_CATEGORIES.map((data) {
          return CategoryWidget(data.title, data.id, data.color);
        }).toList());
  }
}
