import 'package:flutter/material.dart';

class NewsHorisontalList extends StatelessWidget {
  const NewsHorisontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(16),
            width: 200,
            height: 200,
            child: Image.asset(
              'images/news/b1.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 10),
          Container(
            margin: EdgeInsets.all(16),
            width: 200,
            height: 200,
            child: Image.asset(
              'images/news/b2.png',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
