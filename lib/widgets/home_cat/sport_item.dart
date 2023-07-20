import 'package:flutter/material.dart';

import '../../res/styles.dart';

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
      //  onTap: () => function(),
      child: Container(
        width: 120,
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive ? Styles.blueDark : Styles.blue,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(img),
            const SizedBox(height: 10),
            Text(
              name,
              style: Styles.buttonTextWhite,
            ),
          ],
        ),
      ),
    );
  }
}
