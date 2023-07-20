import 'package:betting1/pages/intro2.dart';
import 'package:betting1/widgets/bg.dart';
import 'package:betting1/widgets/big_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'images/1.png',
              scale: 1.2,
            ),
            Text(
              'Dicover all \nabout sport',
              style: Styles.h1,
            ),
            Text(
              'Search millions of jobs and get the\ninside scoop on companies.\nWait for what? Let\’s get start it!',
              style: Styles.small,
            ),
            BigButton(title: 'Next', fun: () => Get.to(const Intro2()))
          ],
        ),
      ),
    );
  }
}
