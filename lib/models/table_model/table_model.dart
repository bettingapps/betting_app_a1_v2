class TableModel {
  TableModel({
    required this.tableData,
  });
  List<TableData> tableData;

  factory TableModel.fromJson(Map<String, Object?> json) {
    var data = (json['Stages'] as List<dynamic>)[0]['LeagueTable']['L'][0]
        ['Tables'][0]['team'] as List<dynamic>;
    List<TableData> list = [];
    data.forEach((el) {
      print(el.runtimeType);
      list.add(TableData.fromJson(el));
    });

    return TableModel(tableData: list);
  }
}

class TableData {
  TableData({
    required this.pos,
    required this.played,
    required this.gd,
    required this.pts,
    required this.teamName,
    required this.id,
    required this.img,
  });
  int pos;
  int played; //win+lost+draw
  int gd;
  String pts;
  String teamName;
  String id;
  String img;

  factory TableData.fromJson(Map<String, Object?> json) {
    return TableData(
      pos: json['rnk'] as int,
      played:
          (json['win'] as int) + (json['lst'] as int) + (json['drw'] as int),
      gd: json['gd'] as int,
      pts: json['ptsn'] as String,
      teamName: json['Tnm'] as String,
      id: json['Tid'] as String,
      img: json['Img'] as String,
    );
  }
}
