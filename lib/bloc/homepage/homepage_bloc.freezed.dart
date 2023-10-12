// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homepage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomepageEvent {
  MySongModel get song => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MySongModel song) navigateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MySongModel song)? navigateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MySongModel song)? navigateEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateEvent value) navigateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateEvent value)? navigateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateEvent value)? navigateEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomepageEventCopyWith<HomepageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomepageEventCopyWith<$Res> {
  factory $HomepageEventCopyWith(
          HomepageEvent value, $Res Function(HomepageEvent) then) =
      _$HomepageEventCopyWithImpl<$Res, HomepageEvent>;
  @useResult
  $Res call({MySongModel song});
}

/// @nodoc
class _$HomepageEventCopyWithImpl<$Res, $Val extends HomepageEvent>
    implements $HomepageEventCopyWith<$Res> {
  _$HomepageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
  }) {
    return _then(_value.copyWith(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as MySongModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigateEventImplCopyWith<$Res>
    implements $HomepageEventCopyWith<$Res> {
  factory _$$NavigateEventImplCopyWith(
          _$NavigateEventImpl value, $Res Function(_$NavigateEventImpl) then) =
      __$$NavigateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MySongModel song});
}

/// @nodoc
class __$$NavigateEventImplCopyWithImpl<$Res>
    extends _$HomepageEventCopyWithImpl<$Res, _$NavigateEventImpl>
    implements _$$NavigateEventImplCopyWith<$Res> {
  __$$NavigateEventImplCopyWithImpl(
      _$NavigateEventImpl _value, $Res Function(_$NavigateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
  }) {
    return _then(_$NavigateEventImpl(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as MySongModel,
    ));
  }
}

/// @nodoc

class _$NavigateEventImpl implements NavigateEvent {
  const _$NavigateEventImpl({required this.song});

  @override
  final MySongModel song;

  @override
  String toString() {
    return 'HomepageEvent.navigateEvent(song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateEventImpl &&
            (identical(other.song, song) || other.song == song));
  }

  @override
  int get hashCode => Object.hash(runtimeType, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateEventImplCopyWith<_$NavigateEventImpl> get copyWith =>
      __$$NavigateEventImplCopyWithImpl<_$NavigateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MySongModel song) navigateEvent,
  }) {
    return navigateEvent(song);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MySongModel song)? navigateEvent,
  }) {
    return navigateEvent?.call(song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MySongModel song)? navigateEvent,
    required TResult orElse(),
  }) {
    if (navigateEvent != null) {
      return navigateEvent(song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateEvent value) navigateEvent,
  }) {
    return navigateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateEvent value)? navigateEvent,
  }) {
    return navigateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateEvent value)? navigateEvent,
    required TResult orElse(),
  }) {
    if (navigateEvent != null) {
      return navigateEvent(this);
    }
    return orElse();
  }
}

abstract class NavigateEvent implements HomepageEvent {
  const factory NavigateEvent({required final MySongModel song}) =
      _$NavigateEventImpl;

  @override
  MySongModel get song;
  @override
  @JsonKey(ignore: true)
  _$$NavigateEventImplCopyWith<_$NavigateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomepageState {
  List<MySongModel> get mySongs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MySongModel> mySongs) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MySongModel> mySongs)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MySongModel> mySongs)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomepageStateCopyWith<HomepageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomepageStateCopyWith<$Res> {
  factory $HomepageStateCopyWith(
          HomepageState value, $Res Function(HomepageState) then) =
      _$HomepageStateCopyWithImpl<$Res, HomepageState>;
  @useResult
  $Res call({List<MySongModel> mySongs});
}

/// @nodoc
class _$HomepageStateCopyWithImpl<$Res, $Val extends HomepageState>
    implements $HomepageStateCopyWith<$Res> {
  _$HomepageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mySongs = null,
  }) {
    return _then(_value.copyWith(
      mySongs: null == mySongs
          ? _value.mySongs
          : mySongs // ignore: cast_nullable_to_non_nullable
              as List<MySongModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomepageStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MySongModel> mySongs});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomepageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mySongs = null,
  }) {
    return _then(_$InitialImpl(
      mySongs: null == mySongs
          ? _value._mySongs
          : mySongs // ignore: cast_nullable_to_non_nullable
              as List<MySongModel>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  _$InitialImpl({required final List<MySongModel> mySongs})
      : _mySongs = mySongs;

  final List<MySongModel> _mySongs;
  @override
  List<MySongModel> get mySongs {
    if (_mySongs is EqualUnmodifiableListView) return _mySongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mySongs);
  }

  @override
  String toString() {
    return 'HomepageState.initial(mySongs: $mySongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._mySongs, _mySongs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_mySongs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MySongModel> mySongs) initial,
  }) {
    return initial(mySongs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MySongModel> mySongs)? initial,
  }) {
    return initial?.call(mySongs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MySongModel> mySongs)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(mySongs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements HomepageState {
  factory Initial({required final List<MySongModel> mySongs}) = _$InitialImpl;

  @override
  List<MySongModel> get mySongs;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
