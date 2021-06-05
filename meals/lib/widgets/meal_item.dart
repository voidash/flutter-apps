import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import '../models/meal.dart';
import 'package:meals/models/category.dart';

/*
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
*/

class MealItem extends StatelessWidget {
  final Meal mealData;

  MealItem(this.mealData);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(mealData.imageUrl,
                        height: 250, width: double.infinity, fit: BoxFit.cover),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.black.withOpacity(0.7),
                        child: Text(
                          mealData.title,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ))
                ],
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: mealData.categories.map((data) {
                      return Chip(label: Text(DUMMY_CATEGORIES.where((element) => element.id == data).first.title));
                    }).toList(),
                  )),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(width: 6),
                    Text(mealData.duration.toString() + ' minutes')
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.work),
                    SizedBox(width: 6),
                    Text('${mealData.affordability}'.substring(14))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
