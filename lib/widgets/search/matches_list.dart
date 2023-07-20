import 'package:flutter/widgets.dart';

import 'match_card.dart';

List<Widget> MatchesList({required matches}) {
  Map<String, bool> isOpenMap = {};

  List<Widget> list = [];
  matches.tournaments.forEach((tr) {
    isOpenMap.putIfAbsent(tr.Sid!, () => true);

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
