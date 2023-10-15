// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_songs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllSongsEvent {
  List<MySongModel> get songs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MySongModel> songs) navigateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MySongModel> songs)? navigateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MySongModel> songs)? navigateEvent,
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
  $AllSongsEventCopyWith<AllSongsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllSongsEventCopyWith<$Res> {
  factory $AllSongsEventCopyWith(
          AllSongsEvent value, $Res Function(AllSongsEvent) then) =
      _$AllSongsEventCopyWithImpl<$Res, AllSongsEvent>;
  @useResult
  $Res call({List<MySongModel> songs});
}

/// @nodoc
class _$AllSongsEventCopyWithImpl<$Res, $Val extends AllSongsEvent>
    implements $AllSongsEventCopyWith<$Res> {
  _$AllSongsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
  }) {
    return _then(_value.copyWith(
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<MySongModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigateEventImplCopyWith<$Res>
    implements $AllSongsEventCopyWith<$Res> {
  factory _$$NavigateEventImplCopyWith(
          _$NavigateEventImpl value, $Res Function(_$NavigateEventImpl) then) =
      __$$NavigateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MySongModel> songs});
}

/// @nodoc
class __$$NavigateEventImplCopyWithImpl<$Res>
    extends _$AllSongsEventCopyWithImpl<$Res, _$NavigateEventImpl>
    implements _$$NavigateEventImplCopyWith<$Res> {
  __$$NavigateEventImplCopyWithImpl(
      _$NavigateEventImpl _value, $Res Function(_$NavigateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
  }) {
    return _then(_$NavigateEventImpl(
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<MySongModel>,
    ));
  }
}

/// @nodoc

class _$NavigateEventImpl implements NavigateEvent {
  const _$NavigateEventImpl({required final List<MySongModel> songs})
      : _songs = songs;

  final List<MySongModel> _songs;
  @override
  List<MySongModel> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString() {
    return 'AllSongsEvent.navigateEvent(songs: $songs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateEventImpl &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_songs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateEventImplCopyWith<_$NavigateEventImpl> get copyWith =>
      __$$NavigateEventImplCopyWithImpl<_$NavigateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MySongModel> songs) navigateEvent,
  }) {
    return navigateEvent(songs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MySongModel> songs)? navigateEvent,
  }) {
    return navigateEvent?.call(songs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MySongModel> songs)? navigateEvent,
    required TResult orElse(),
  }) {
    if (navigateEvent != null) {
      return navigateEvent(songs);
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

abstract class NavigateEvent implements AllSongsEvent {
  const factory NavigateEvent({required final List<MySongModel> songs}) =
      _$NavigateEventImpl;

  @override
  List<MySongModel> get songs;
  @override
  @JsonKey(ignore: true)
  _$$NavigateEventImplCopyWith<_$NavigateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllSongsState {
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
  $AllSongsStateCopyWith<AllSongsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllSongsStateCopyWith<$Res> {
  factory $AllSongsStateCopyWith(
          AllSongsState value, $Res Function(AllSongsState) then) =
      _$AllSongsStateCopyWithImpl<$Res, AllSongsState>;
  @useResult
  $Res call({List<MySongModel> mySongs});
}

/// @nodoc
class _$AllSongsStateCopyWithImpl<$Res, $Val extends AllSongsState>
    implements $AllSongsStateCopyWith<$Res> {
  _$AllSongsStateCopyWithImpl(this._value, this._then);

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
    implements $AllSongsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MySongModel> mySongs});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AllSongsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AllSongsState.initial(mySongs: $mySongs)';
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

abstract class Initial implements AllSongsState {
  factory Initial({required final List<MySongModel> mySongs}) = _$InitialImpl;

  @override
  List<MySongModel> get mySongs;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
