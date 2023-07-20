import 'package:flutter/material.dart';

import '../../res/styles.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 15),
            Text('Team', style: Styles.h2blue),
            SizedBox(width: 160),
            Text('P', style: Styles.h2blue),
            SizedBox(width: 15),
            Text('GD', style: Styles.h2blue),
            SizedBox(width: 15),
            Text('PTS', style: Styles.h2blue)
          ],
        ),
        Divider(color: Styles.blueDark),
      ],
    );
  }
}
