import 'package:flutter/material.dart';

import '../../res/styles.dart';
import '../explore/search_field.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width - 140,
            height: 60,
            child: SearchField(hint: 'Search your team ...', text: ''),
          ),
          Expanded(child: SizedBox()),
          InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Text(
              'Cancel',
              style: Styles.buttonTextWhite,
            ),
          )
        ],
      ),
    );
  }
}
