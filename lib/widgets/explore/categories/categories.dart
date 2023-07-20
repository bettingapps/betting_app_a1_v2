import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

import '../../search/categories.dart';

class SportCategories extends StatefulWidget {
  const SportCategories({super.key});

  @override
  State<SportCategories> createState() => _SportCategoriesState();
}

class _SportCategoriesState extends State<SportCategories> {
  int catIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        CategotyItem(
          img: 'images/soccer.png',
          title: 'Soccer',
          isActive: catIndex == 0,
          fun: () => setState(() {
            catIndex = 0;
          }),
        ),
        CategotyItem(
          img: 'images/basketball.png',
          title: 'Basketball',
          isActive: catIndex == 1,
          fun: () => setState(() {
            catIndex = 1;
          }),
        ),
        CategotyItem(
          img: 'images/football.png',
          title: 'Football',
          isActive: catIndex == 2,
          fun: () => setState(() {
            catIndex = 2;
          }),
        ),
        CategotyItem(
          img: 'images/tennis.png',
          title: 'Tennis',
          isActive: catIndex == 3,
          fun: () => setState(() {
            catIndex = 3;
          }),
        ),
        CategotyItem(
          img: 'images/volleyball.png',
          title: 'Volleyball',
          isActive: catIndex == 4,
          fun: () => setState(() {
            catIndex = 4;
          }),
        ),
        CategotyItem(
          img: 'images/baseball.png',
          title: 'Baseball',
          isActive: catIndex == 5,
          fun: () => setState(() {
            catIndex = 5;
          }),
        ),
      ]),
    );
  }
}
