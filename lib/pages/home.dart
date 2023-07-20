import 'package:betting1/pages/search.dart';
import 'package:betting1/widgets/bg.dart';
import 'package:betting1/widgets/loading_container.dart';
import 'package:betting1/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../bloc/matches_bloc/matches_bloc.dart';
import '../models/matches/matches.dart';
import '../res/styles.dart';

import '../widgets/home_cat/home_categoriy_list.dart';
import '../widgets/home_header.dart';
import '../widgets/matches/matches_list/matches_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isLoading = true;
  update() {
    String sport = 'soccer';
    String date = DateFormat('yyyyMMdd').format(DateTime.now());

    context
        .read<MatchesBloc>()
        .add(MatchesEvent.fetch(sport: sport, date: date));
  }

  Matches? _matches;
  bool initFlag = true;

  @override
  Widget build(BuildContext context) {
    if (initFlag) {
      initFlag = false;
      update();
    }
    context.watch<MatchesBloc>().state.when(
          loaded: (matches) {
            _isLoading = false;
            _matches = matches;
          },
          loading: () => _isLoading = true,
          error: () {},
        );
    return Scaffold(
      bottomNavigationBar: Menu(i: 0),
      body: BgContainer(
          child: _isLoading
              ? LoadingContainer()
              : ListView(
                  children: [
                    HomeHeader(),
                    SizedBox(height: 20),
                    HomeCategoryList(),
                    Center(child: Image.asset('images/banner1.png')),
                    ...MatchesList(
                      matches: _matches!,
                    ).toList(),
                  ],
                )),
    );
  }
}
