import 'package:betting1/widgets/bg.dart';
import 'package:betting1/widgets/match_details_card/match_details_card.dart';
import 'package:betting1/widgets/match_result_card/match_result_card.dart';
import 'package:betting1/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/matche_details/match_details_bloc.dart';
import '../bloc/matches_bloc/matches_bloc.dart';
import '../models/match_detail/match_details.dart';
import '../models/matches/matches.dart';
import '../widgets/matches/matches_list/matches_list.dart';

class Detail extends StatefulWidget {
  Detail({super.key, required this.event, required this.tournament});
  Event event;
  Tournament tournament;
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  bool _isLoading = true;
  update() {
    String sport = 'soccer';
    sport = 'soccer';
    context
        .read<MatchDetailsBloc>()
        .add(MatchDetailsBlocEvent.fetch(sport: sport, id: widget.event.Eid!));
  }

  Matches? _matches;
  bool initFlag = true;
  MatchDetails? _matchDetails;
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
    context.watch<MatchDetailsBloc>().state.when(
          loaded: (dt) {
            _matchDetails = dt;
          },
          loading: () => _isLoading = true,
          error: () {},
        );
    return Scaffold(
      bottomNavigationBar: Menu(
        i: 0,
      ),
      body: BgContainer(
          child: _isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  children: [
                    Container(height: 40),
                    MatchResultCard(
                      tournament: widget.tournament,
                      team1: widget.event.T1[0],
                      team2: widget.event.T2[0],
                    ),
                    MatchDetailsCard(
                      tournament: _matches!.tournaments[0],
                      matchDetails: _matchDetails!,
                    ),
                    Container(height: 20),
                    ...MatchesList(
                      matches: _matches!,
                    ).toList(),
                  ],
                )),
    );
  }
}
