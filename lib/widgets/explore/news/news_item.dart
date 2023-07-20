import 'package:flutter/material.dart';

import '../../../res/styles.dart';
import 'news_data.dart';

class NewsItem extends StatelessWidget {
  NewsItem({super.key, required this.newsEl});
  NewsModel newsEl;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 70,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(newsEl.image),
          Container(width: 20),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsEl.title,
                  maxLines: 2,
                  style: Styles.h2,
                ),
                Text(
                  newsEl.time,
                  style: Styles.smallGrey,
                ),
              ],
            ),
          ),
          Container(width: 20),
          Expanded(child: Container()),
          Image.asset('images/bookmark.png'),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
