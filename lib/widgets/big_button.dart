import 'package:flutter/material.dart';

import '../res/styles.dart';

class BigButton extends StatelessWidget {
  BigButton({
    super.key,
    required this.title,
    required this.fun,
  });
  String title;
  Function fun;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => fun(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        width: 330,
        height: 100,
        child: Text(
          title,
          style: Styles.buttonText,
        ),
      ),
    );
  }
}
