import 'package:betting1/models/table_model/table_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/matches/matches.dart';

import '../../repository/repo.dart';

part 'tables_state.dart';
part 'tables_event.dart';

part 'tables_bloc.freezed.dart';

class TablesBloc extends Bloc<TablesEvent, TablesState> {
  final Repo repo;

  TablesBloc({
    required this.repo,
  }) : super(const TablesState.loading()) {
    on<TablesEventFetch>((event, emit) async {
      emit(const TablesState.loading());

      try {
        var tables = await repo.getTable(
            sport: 'soccer',
            countryLink: 'argentina',
            league: 'primera-division');
        print(tables.tableData);
        emit(TablesState.loaded(tables: [tables]));
      } catch (e) {
        // const MatchesState.error();
      }
    });
  }
}
