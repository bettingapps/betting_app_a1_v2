import 'package:flutter/widgets.dart';

import '../../../models/matches/matches.dart';
import '../match_card/match_card.dart';
import '../match_league/match_league.dart';

List<Widget> MatchesList({required matches}) {
  Map<String, bool> isOpenMap = {};

  List<Widget> list = [];
  matches.tournaments.forEach((tr) {
    isOpenMap.putIfAbsent(tr.Sid!, () => true);
    list.add(MatchLeague(
      tournament: tr,
      isOpen: isOpenMap[tr.Sid]!,
      change: () {},
    ));
    tr.Events.forEach((event) {
      list.add(MatchCard(
        event: event,
        isOpen: isOpenMap[tr.Sid]!,
        tournament: tr,
      ));
    });
  });

  return list;
}
