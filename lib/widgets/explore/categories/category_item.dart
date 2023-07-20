import 'package:flutter/material.dart';

import '../../../res/styles.dart';

class CategotyItem extends StatelessWidget {
  CategotyItem(
      {super.key,
      required this.img,
      required this.title,
      required this.isActive,
      required this.fun});
  String img;
  String title;
  bool isActive;
  Function fun;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: InkWell(
              onTap: () => fun(),
              child: Row(
                children: [
                  Image.asset(
                    img,
                    scale: 1.5,
                  ),
                  Container(width: 10),
                  Text(
                    title,
                    style: Styles.h2blue,
                  ),
                ],
              ),
            ))
        : InkWell(
            onTap: () => fun(),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Styles.blueDark,
              child: Image.asset(
                img,
                scale: 1.5,
              ),
            ),
          );
  }
}
