import 'package:betting1/models/matches/matches.dart';
import 'package:flutter/material.dart';

import '../../res/styles.dart';

class MatchResultCard extends StatelessWidget {
  MatchResultCard(
      {super.key,
      required this.tournament,
      required this.team1,
      required this.team2});
  Tournament tournament;
  Team team1;
  Team team2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '${tournament.CompD!}: ${tournament.CompN}          ',
                  style: Styles.h2,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: Column(children: [
                CircleAvatar(
                  radius: 30,
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.network(
                        'https://lsm-static-prod.livescore.com/high/${team1.Img}'),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Team 1',
                  style: Styles.h2,
                )
              ]),
            ),
            Text(
              '2 - 3',
              style: Styles.h1,
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 100,
              child: Column(children: [
                CircleAvatar(
                  radius: 30,
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.network(
                        'https://lsm-static-prod.livescore.com/high/${team2.Img}'),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Team 1',
                  style: Styles.h2,
                )
              ]),
            ),
          ],
        )
      ],
    );
  }
}
