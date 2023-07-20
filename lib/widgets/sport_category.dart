import 'package:flutter/material.dart';

import '../res/styles.dart';

class SportCategory extends StatefulWidget {
  SportCategory({super.key});

  @override
  State<SportCategory> createState() => _SportCategoryState();
}

class _SportCategoryState extends State<SportCategory> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Sport(
            name: 'Soccer',
            img: 'images/soccer.png',
            isActive: index == 1,
            function: () => setState(() {
              index = 1;
            }),
          ),
          const SizedBox(width: 10, height: 10),
          Sport(
            name: 'Basketball',
            img: 'images/basketball.png',
            isActive: index == 2,
            function: () => setState(() {
              index = 2;
            }),
          ),
          const SizedBox(width: 10, height: 10),
          Sport(
            name: 'Football',
            img: 'images/football.png',
            isActive: index == 3,
            function: () => setState(() {
              index = 3;
            }),
          ),
          const SizedBox(width: 10, height: 10),
        ]),
        const SizedBox(width: 10, height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Sport(
            name: 'Baseball',
            img: 'images/baseball.png',
            isActive: index == 4,
            function: () => setState(() {
              index = 4;
            }),
          ),
          const SizedBox(width: 10, height: 10),
          Sport(
            name: 'Tennis',
            img: 'images/tennis.png',
            isActive: index == 5,
            function: () => setState(() {
              index = 5;
            }),
          ),
          const SizedBox(width: 10, height: 10),
          Sport(
            name: 'Volleyball',
            img: 'images/volleyball.png',
            isActive: index == 6,
            function: () => setState(() {
              index = 6;
            }),
          ),
          const SizedBox(width: 10, height: 10),
        ]),
      ],
    );
  }
}

class Sport extends StatelessWidget {
  Sport({
    super.key,
    required this.img,
    required this.isActive,
    required this.function,
    required this.name,
  });
  bool isActive;
  String img;
  String name;
  Function function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => function(),
      child: Container(
        height: 90,
        width: 90,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: isActive ? Styles.blueDark : Styles.blue,
              child: Image.asset(
                img,
                scale: 1.5,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Text(
                name,
                style: Styles.buttonTextWhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}
