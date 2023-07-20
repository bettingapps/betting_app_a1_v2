part of 'tables_bloc.dart';

@freezed
class TablesState with _$TablesState {
  const factory TablesState.loaded({required List<TableModel> tables}) =
      TablesStateLoaded;
  const factory TablesState.loading() = TablesStateLoading;
  const factory TablesState.error() = TablesStateError;
}
