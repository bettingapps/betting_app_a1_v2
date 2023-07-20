import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

class SearchCategories extends StatefulWidget {
  const SearchCategories({super.key});

  @override
  State<SearchCategories> createState() => _SearchCategoriesState();
}

class _SearchCategoriesState extends State<SearchCategories> {
  int catIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(children: [
        CategotyItem(
          img: 'images/search/1.png',
          title: 'Live Score',
          isActive: true,
          fun: () {},
        ),
        Expanded(child: SizedBox()),
        CategotyItem(
          img: 'images/search/2.png',
          title: 'Basketball',
          isActive: catIndex == 1,
          fun: () {},
        ),
        Expanded(child: SizedBox()),
        CategotyItem(
          img: 'images/search/3.png',
          title: 'Football',
          isActive: catIndex == 2,
          fun: () {},
        ),
        Expanded(child: SizedBox()),
        CategotyItem(
          img: 'images/search/4.png',
          title: 'Tennis',
          isActive: catIndex == 3,
          fun: () {},
        ),
      ]),
    );
  }
}

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
            height: 60,
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
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
                    scale: 1.2,
                  ),
                  SizedBox(width: 10),
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
                scale: 1.2,
              ),
            ),
          );
  }
}
