import 'package:betting1/pages/explore.dart';
import 'package:betting1/pages/home.dart';
import 'package:betting1/pages/standings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatefulWidget {
  Menu({super.key, required this.i});

  int i = 0;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: widget.i == 0 ? Colors.amber : Colors.black87,
              size: widget.i == 0 ? 0 : null,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined,
              color: widget.i == 1 ? Colors.amber : Colors.black87,
              size: widget.i == 1 ? 0 : null,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_chart_outlined,
              color: widget.i == 2 ? Colors.amber : Colors.black87,
              size: widget.i == 2 ? 0 : null,
            ),
            label: 'Standing',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              color: widget.i == 3 ? Colors.amber : Colors.black87,
              size: widget.i == 3 ? 0 : null,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: widget.i,
        selectedItemColor: Colors.amber[800],
        onTap: (val) {
          setState(() {
            widget.i = val;
          });
          switch (widget.i) {
            case 0:
              Get.to(Home());
            case 1:
              Get.to(Explore());
            case 2:
              Get.to(Standings());
          }
        },
      ),
    );
  }
}
