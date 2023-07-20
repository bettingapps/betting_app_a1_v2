part of 'tables_bloc.dart';

@freezed
class TablesEvent with _$TablesEvent {
  const factory TablesEvent.fetch() = TablesEventFetch;
}
