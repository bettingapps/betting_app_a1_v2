// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tables_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TablesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TableModel> tables) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TableModel> tables)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TableModel> tables)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TablesStateLoaded value) loaded,
    required TResult Function(TablesStateLoading value) loading,
    required TResult Function(TablesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TablesStateLoaded value)? loaded,
    TResult? Function(TablesStateLoading value)? loading,
    TResult? Function(TablesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TablesStateLoaded value)? loaded,
    TResult Function(TablesStateLoading value)? loading,
    TResult Function(TablesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TablesStateCopyWith<$Res> {
  factory $TablesStateCopyWith(
          TablesState value, $Res Function(TablesState) then) =
      _$TablesStateCopyWithImpl<$Res, TablesState>;
}

/// @nodoc
class _$TablesStateCopyWithImpl<$Res, $Val extends TablesState>
    implements $TablesStateCopyWith<$Res> {
  _$TablesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TablesStateLoadedCopyWith<$Res> {
  factory _$$TablesStateLoadedCopyWith(
          _$TablesStateLoaded value, $Res Function(_$TablesStateLoaded) then) =
      __$$TablesStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TableModel> tables});
}

/// @nodoc
class __$$TablesStateLoadedCopyWithImpl<$Res>
    extends _$TablesStateCopyWithImpl<$Res, _$TablesStateLoaded>
    implements _$$TablesStateLoadedCopyWith<$Res> {
  __$$TablesStateLoadedCopyWithImpl(
      _$TablesStateLoaded _value, $Res Function(_$TablesStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = null,
  }) {
    return _then(_$TablesStateLoaded(
      tables: null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableModel>,
    ));
  }
}

/// @nodoc

class _$TablesStateLoaded implements TablesStateLoaded {
  const _$TablesStateLoaded({required final List<TableModel> tables})
      : _tables = tables;

  final List<TableModel> _tables;
  @override
  List<TableModel> get tables {
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  @override
  String toString() {
    return 'TablesState.loaded(tables: $tables)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TablesStateLoaded &&
            const DeepCollectionEquality().equals(other._tables, _tables));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tables));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TablesStateLoadedCopyWith<_$TablesStateLoaded> get copyWith =>
      __$$TablesStateLoadedCopyWithImpl<_$TablesStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TableModel> tables) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loaded(tables);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TableModel> tables)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loaded?.call(tables);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TableModel> tables)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tables);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TablesStateLoaded value) loaded,
    required TResult Function(TablesStateLoading value) loading,
    required TResult Function(TablesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TablesStateLoaded value)? loaded,
    TResult? Function(TablesStateLoading value)? loading,
    TResult? Function(TablesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TablesStateLoaded value)? loaded,
    TResult Function(TablesStateLoading value)? loading,
    TResult Function(TablesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TablesStateLoaded implements TablesState {
  const factory TablesStateLoaded({required final List<TableModel> tables}) =
      _$TablesStateLoaded;

  List<TableModel> get tables;
  @JsonKey(ignore: true)
  _$$TablesStateLoadedCopyWith<_$TablesStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TablesStateLoadingCopyWith<$Res> {
  factory _$$TablesStateLoadingCopyWith(_$TablesStateLoading value,
          $Res Function(_$TablesStateLoading) then) =
      __$$TablesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TablesStateLoadingCopyWithImpl<$Res>
    extends _$TablesStateCopyWithImpl<$Res, _$TablesStateLoading>
    implements _$$TablesStateLoadingCopyWith<$Res> {
  __$$TablesStateLoadingCopyWithImpl(
      _$TablesStateLoading _value, $Res Function(_$TablesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TablesStateLoading implements TablesStateLoading {
  const _$TablesStateLoading();

  @override
  String toString() {
    return 'TablesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TablesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TableModel> tables) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TableModel> tables)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TableModel> tables)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TablesStateLoaded value) loaded,
    required TResult Function(TablesStateLoading value) loading,
    required TResult Function(TablesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TablesStateLoaded value)? loaded,
    TResult? Function(TablesStateLoading value)? loading,
    TResult? Function(TablesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TablesStateLoaded value)? loaded,
    TResult Function(TablesStateLoading value)? loading,
    TResult Function(TablesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TablesStateLoading implements TablesState {
  const factory TablesStateLoading() = _$TablesStateLoading;
}

/// @nodoc
abstract class _$$TablesStateErrorCopyWith<$Res> {
  factory _$$TablesStateErrorCopyWith(
          _$TablesStateError value, $Res Function(_$TablesStateError) then) =
      __$$TablesStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TablesStateErrorCopyWithImpl<$Res>
    extends _$TablesStateCopyWithImpl<$Res, _$TablesStateError>
    implements _$$TablesStateErrorCopyWith<$Res> {
  __$$TablesStateErrorCopyWithImpl(
      _$TablesStateError _value, $Res Function(_$TablesStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TablesStateError implements TablesStateError {
  const _$TablesStateError();

  @override
  String toString() {
    return 'TablesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TablesStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TableModel> tables) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TableModel> tables)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TableModel> tables)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TablesStateLoaded value) loaded,
    required TResult Function(TablesStateLoading value) loading,
    required TResult Function(TablesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TablesStateLoaded value)? loaded,
    TResult? Function(TablesStateLoading value)? loading,
    TResult? Function(TablesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TablesStateLoaded value)? loaded,
    TResult Function(TablesStateLoading value)? loading,
    TResult Function(TablesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TablesStateError implements TablesState {
  const factory TablesStateError() = _$TablesStateError;
}

/// @nodoc
mixin _$TablesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TablesEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TablesEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TablesEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TablesEventCopyWith<$Res> {
  factory $TablesEventCopyWith(
          TablesEvent value, $Res Function(TablesEvent) then) =
      _$TablesEventCopyWithImpl<$Res, TablesEvent>;
}

/// @nodoc
class _$TablesEventCopyWithImpl<$Res, $Val extends TablesEvent>
    implements $TablesEventCopyWith<$Res> {
  _$TablesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TablesEventFetchCopyWith<$Res> {
  factory _$$TablesEventFetchCopyWith(
          _$TablesEventFetch value, $Res Function(_$TablesEventFetch) then) =
      __$$TablesEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TablesEventFetchCopyWithImpl<$Res>
    extends _$TablesEventCopyWithImpl<$Res, _$TablesEventFetch>
    implements _$$TablesEventFetchCopyWith<$Res> {
  __$$TablesEventFetchCopyWithImpl(
      _$TablesEventFetch _value, $Res Function(_$TablesEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TablesEventFetch implements TablesEventFetch {
  const _$TablesEventFetch();

  @override
  String toString() {
    return 'TablesEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TablesEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TablesEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TablesEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TablesEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class TablesEventFetch implements TablesEvent {
  const factory TablesEventFetch() = _$TablesEventFetch;
}
