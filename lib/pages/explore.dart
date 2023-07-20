import 'package:betting1/res/styles.dart';
import 'package:betting1/widgets/explore/categories/categories.dart';
import 'package:betting1/widgets/explore/news/news_horisontal_list.dart';
import 'package:flutter/material.dart';

import '../widgets/explore/news/news_vertical_list.dart';
import '../widgets/explore/search_field.dart';
import '../widgets/menu.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.blue,
      bottomNavigationBar: Menu(i: 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SearchField(
                  hint: 'Search for news, team, match, etc...',
                  text: '',
                ),
              ),
              Container(height: 20),
              const SportCategories(),
              const NewsVerticalList(),
              Container(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Trending News',
                  style: Styles.h1_1,
                ),
              ),
              Container(height: 20),
              const NewsHorisontalList(),
            ],
          ),
        ),
      ),
    );
  }
}
