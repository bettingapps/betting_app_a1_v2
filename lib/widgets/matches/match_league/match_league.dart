import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../models/matches/matches.dart';
import '../../../res/styles.dart';

class MatchLeague extends StatelessWidget {
  MatchLeague(
      {super.key,
      required this.tournament,
      required this.isOpen,
      required this.change});
  Tournament tournament;
  bool isOpen;
  Function change;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => change(),
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          children: [
            SizedBox(
              height: 16,
              width: 30,
              child: CachedNetworkImage(
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  imageUrl:
                      'https://static.livescore.com/i2/fh/${tournament.Ccd}.jpg'),
            ),
            SizedBox(width: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      tournament.Snm!,
                      style: Styles.h2,
                      maxLines: 1,
                    ),
                  ),
                  Text(
                    tournament.Cnm!,
                    style: Styles.h3Gray,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
