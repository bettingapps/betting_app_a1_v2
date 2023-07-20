import 'package:betting1/res/styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../bloc/matches_bloc/matches_bloc.dart';
import '../models/matches/matches.dart';
import '../widgets/Search/categories.dart';
import '../widgets/loading_container.dart';
import '../widgets/menu.dart';
import '../widgets/search/matches_list.dart';
import '../widgets/search/search_container.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool _isLoading = true;
  update() {
    String sport = 'soccer';
    String date = '20230712';

    sport = 'soccer';
    date = DateFormat('yyyyMMdd').format(DateTime.now());

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
      backgroundColor: Styles.blue,
      bottomNavigationBar: Menu(i: 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: _isLoading
              ? const LoadingContainer()
              : SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const SearchContainer(),
                      const Padding(
                        padding: const EdgeInsets.all(20),
                        child: SearchCategories(),
                      ),
                      ...MatchesList(
                        matches: _matches!,
                      ).toList(),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
