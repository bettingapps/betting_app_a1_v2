import 'package:betting1/models/match_detail/match_details.dart';
import 'package:dio/dio.dart';

import '../../models/matches/matches.dart';
import '../../models/table_model/table_model.dart';

const host = 'https://prod-public-api.livescore.com/v1/api/app';

class MatchesApi {
  static Future<Matches> getMatches({
    required String sport,
    required String date,
  }) async {
    var dio = Dio();
    var res = await dio.get('$host/date/$sport/$date/3?MD=1&countryCode=RU');
    List<Tournament> list = [];

    res.data['Stages'].forEach((el) {
      list.add(Tournament.fromJson(el));
    });

    return Matches(tournaments: list);
  }

  static Future<MatchDetails> getMatchDetails({
    required String sport,
    required String id,
  }) async {
    var dio = Dio();
    var res = await dio.get('$host/statistics/$sport/$id');
    MatchDetails details = MatchDetails.fromJson(res.data);

    return details;
  }

  static Future<TableModel> getTable(
      {required String sport, required countryLink, required league}) async {
    TableModel model = TableModel(tableData: []);
    try {
      var dio = Dio();
      var res = await dio.get(
          'https://prod-public-api.livescore.com/v1/api/app/stage/$sport/$countryLink/$league/1');
      print(res.data);
      model = TableModel.fromJson(res.data);
      print('table -ok');
    } catch (e) {}
    return model;
  }
}
