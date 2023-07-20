import 'package:flutter/material.dart';
import '../../res/styles.dart';
import 'sport_item.dart';

class HomeCategoryList extends StatefulWidget {
  const HomeCategoryList({super.key});

  @override
  State<HomeCategoryList> createState() => _HomeCategoryListState();
}

class _HomeCategoryListState extends State<HomeCategoryList> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      color: Styles.bluegray,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () => setState(() {
              index = 0;
            }),
            child: Sport(
              img: 'images/soccer.png',
              isActive: index == 0,
              function: () {},
              name: 'Soccer',
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              index = 1;
            }),
            child: Sport(
              img: 'images/basketball.png',
              isActive: index == 1,
              function: () {},
              name: 'Basketball',
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              index = 2;
            }),
            child: Sport(
              img: 'images/football.png',
              isActive: index == 2,
              function: () {},
              name: 'Football',
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              index = 3;
            }),
            child: Sport(
              img: 'images/tennis.png',
              isActive: index == 3,
              function: () {},
              name: 'Tennis',
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              index = 4;
            }),
            child: Sport(
              img: 'images/baseball.png',
              isActive: index == 4,
              function: () {},
              name: 'Baseball',
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              index = 5;
            }),
            child: Sport(
              img: 'images/volleyball.png',
              isActive: index == 5,
              function: () {},
              name: 'Volleyball',
            ),
          ),
        ],
      ),
    );
  }
}
