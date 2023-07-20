import 'package:flutter/material.dart';

class BgContainer extends StatelessWidget {
  BgContainer({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            'images/bg1.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 2, 53, 95),
                Color.fromARGB(140, 33, 149, 243)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        SafeArea(
          child: child,
        ),
      ],
    );
  }
}
