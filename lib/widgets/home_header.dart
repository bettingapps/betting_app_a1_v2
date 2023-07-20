import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/search.dart';
import '../res/styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(20),
          child: Text(
            'LiveScore',
            style: Styles.buttonTextWhite,
          ),
        ),
        Expanded(child: SizedBox()),
        InkWell(
          child: Image.asset('images/search.png'),
          onTap: () => Get.to(Search()),
        ),
        SizedBox(width: 10),
        Image.asset('images/notif2.png'),
        SizedBox(width: 20),
      ],
    );
  }
}
