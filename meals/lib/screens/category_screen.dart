import 'package:flutter/material.dart';
import 'package:meals/widgets/appbar.dart';
import '../widgets/list_categories.dart';


class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar('Find Food Categories'),
        body: CategoryList()
    );
  }
}
