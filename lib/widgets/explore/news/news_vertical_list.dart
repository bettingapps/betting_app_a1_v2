import 'package:betting1/pages/article.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'news_data.dart';
import 'news_item.dart';

class NewsVerticalList extends StatelessWidget {
  const NewsVerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () => Get.to(const Article()),
            child: NewsItem(newsEl: newsData[0]),
          ),
          InkWell(
            onTap: () => Get.to(const Article()),
            child: NewsItem(newsEl: newsData[1]),
          ),
          InkWell(
            onTap: () => Get.to(const Article()),
            child: NewsItem(newsEl: newsData[2]),
          ),
          InkWell(
            onTap: () => Get.to(const Article()),
            child: NewsItem(newsEl: newsData[3]),
          ),
        ],
      ),
    );
  }
}
