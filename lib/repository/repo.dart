import 'package:betting1/models/table_model/table_model.dart';

import '../models/match_detail/match_details.dart';
import '../models/matches/matches.dart';

import 'api/matches_api.dart';

class Repo {
  Future<Matches> getMatches({
    required String sport,
    required String date,
  }) async {
    return MatchesApi.getMatches(sport: sport, date: date);
  }

  Future<MatchDetails> getMatchDetails({
    required String sport,
    required String id,
  }) async {
    return MatchesApi.getMatchDetails(sport: sport, id: id);
  }

  Future<TableModel> getTable(
      {required String sport, required countryLink, required league}) async {
    return await MatchesApi.getTable(
        sport: sport, countryLink: countryLink, league: league);
  }
}
