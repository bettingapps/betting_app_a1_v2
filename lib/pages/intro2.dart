import 'package:betting1/pages/home.dart';
import 'package:betting1/widgets/bg.dart';
import 'package:betting1/widgets/big_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widgets/sport_category.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgContainer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 20),
                      Text(
                        'What sport do\nyou interest?',
                        style: Styles.h1,
                      ),
                      Container(height: 10),
                      Text(
                        'You can choose more than one',
                        style: Styles.small,
                      ),
                    ],
                  ),
                  Container(height: 40),
                  SportCategory(),
                  Container(height: 40),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BigButton(
                          title: 'Continue',
                          fun: () => Get.to(Home()),
                        ),
                        Container(height: 20),
                        InkWell(
                          onTap: () => Get.to(Home()),
                          child: Text(
                            'Skip',
                            style: Styles.buttonTextWhite,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
