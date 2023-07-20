import 'package:betting1/res/styles.dart';
import 'package:betting1/widgets/big_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../bloc/matches_bloc/matches_bloc.dart';
import '../models/matches/matches.dart';

import '../widgets/explore/categories/categories.dart';

import '../widgets/menu.dart';

class Article extends StatefulWidget {
  const Article({super.key});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.blue,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Image.asset(
                  'images/a.png',
                  scale: 1,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Arsenal vs Aston Villa prediction',
                style: Styles.h1_1,
              ),
            ),
            Image.asset('images/author.png'),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'A',
                        style: Styles.h1,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'rsenal will have to grind it out against \nAston Villa if they are to register',
                        maxLines: 2,
                        style: Styles.small,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'League wins. The match is scheduled for Sunday at the Emirates.\n\n The Gunners put forth a real statement of intent after their 1-0 win against Manchester United. Mikel Arteta\'s side had already surrendered points to Liverpool, Manchester City and',
                    style: Styles.small,
                    maxLines: 50,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => Get.back(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: 200,
                height: 50,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '    Read More',
                      style: Styles.buttonText,
                    ),
                    Container(width: 10),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Styles.blue,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
