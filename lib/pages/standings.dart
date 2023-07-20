import 'package:betting1/bloc/tables_bloc/tables_bloc.dart';
import 'package:betting1/models/table_model/table_model.dart';

import 'package:betting1/res/styles.dart';
import 'package:betting1/widgets/explore/categories/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/explore/search_field.dart';
import '../widgets/loading_container.dart';
import '../widgets/menu.dart';
import '../widgets/standings/table_header.dart';

class Standings extends StatefulWidget {
  Standings({super.key});

  @override
  State<Standings> createState() => _StandingsState();
}

class _StandingsState extends State<Standings> {
  bool _isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  update() {
    context.read<TablesBloc>().add(TablesEvent.fetch());
  }

  List<TableModel> tables = [];
  bool initFlag = true;
  @override
  Widget build(BuildContext context) {
    if (initFlag) {
      initFlag = false;
      update();
    }
    context.watch<TablesBloc>().state.when(
          loaded: (t) {
            _isLoading = false;
            tables = t;
            print(tables.take(1).first.tableData);
          },
          loading: () => _isLoading = true,
          error: () {},
        );
    return Scaffold(
      backgroundColor: Styles.blue,
      bottomNavigationBar: Menu(i: 2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: _isLoading
              ? LoadingContainer()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SearchField(
                        hint: 'Search your competition ...',
                        text: '',
                      ),
                    ),
                    Container(height: 20),
                    SportCategories(),
                    Container(height: 50),
                    //  InkWell(
                    // onTap: () => Get.to(LastOne()),
                    //  child:
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          height: 50,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.network(
                                'https://static.livescore.com/i2/fh/argentina.jpg',
                                scale: 2,
                              ),
                              SizedBox(width: 20),
                              Column(
                                children: [
                                  Text(
                                    'Primera Division',
                                    style: Styles.h2,
                                  ),
                                  Text(
                                    'Argentina',
                                    style: Styles.smallGrey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(height: 20),
                        Container(
                          width: 320,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: Styles.blueWihite,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              TableHeader(),
                              ...tables.first.tableData.map((e) {
                                return Column(
                                  children: [
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Image.network(
                                          'https://lsm-static-prod.livescore.com/medium/${e.img}',
                                          scale: 2,
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                          width: 150,
                                          child: Text(
                                            e.teamName,
                                            style: Styles.h2blue,
                                            overflow: TextOverflow.fade,
                                          ),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Container(
                                          width: 20,
                                          alignment: Alignment.center,
                                          child: Text(
                                            e.played.toString(),
                                            style: Styles.h2blue,
                                            overflow: TextOverflow.fade,
                                          ),
                                        ),
                                        Container(
                                          width: 40,
                                          alignment: Alignment.center,
                                          child: Text(
                                            e.gd.toString(),
                                            style: Styles.h2blue,
                                            overflow: TextOverflow.fade,
                                          ),
                                        ),
                                        Container(
                                          width: 40,
                                          alignment: Alignment.center,
                                          child: Text(
                                            e.pts.toString(),
                                            style: Styles.h2blue,
                                            overflow: TextOverflow.fade,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                  ],
                                );
                              })
                                ..toList(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //   )
                  ],
                ),
        ),
      ),
    );
  }
}
