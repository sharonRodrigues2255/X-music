// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, List<MySongModel> mysongs) playSong,
    required TResult Function() pauseSong,
    required TResult Function() continueSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, List<MySongModel> mysongs)? playSong,
    TResult? Function()? pauseSong,
    TResult? Function()? continueSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<MySongModel> mysongs)? playSong,
    TResult Function()? pauseSong,
    TResult Function()? continueSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaySong value) playSong,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(ContinueSong value) continueSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(ContinueSong value)? continueSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaySong value)? playSong,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(ContinueSong value)? continueSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlaySongImplCopyWith<$Res> {
  factory _$$PlaySongImplCopyWith(
          _$PlaySongImpl value, $Res Function(_$PlaySongImpl) then) =
      __$$PlaySongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, List<MySongModel> mysongs});
}

/// @nodoc
class __$$PlaySongImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PlaySongImpl>
    implements _$$PlaySongImplCopyWith<$Res> {
  __$$PlaySongImplCopyWithImpl(
      _$PlaySongImpl _value, $Res Function(_$PlaySongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? mysongs = null,
  }) {
    return _then(_$PlaySongImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      mysongs: null == mysongs
          ? _value._mysongs
          : mysongs // ignore: cast_nullable_to_non_nullable
              as List<MySongModel>,
    ));
  }
}

/// @nodoc

class _$PlaySongImpl implements PlaySong {
  const _$PlaySongImpl(
      {required this.index, required final List<MySongModel> mysongs})
      : _mysongs = mysongs;

  @override
  final int index;
  final List<MySongModel> _mysongs;
  @override
  List<MySongModel> get mysongs {
    if (_mysongs is EqualUnmodifiableListView) return _mysongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mysongs);
  }

  @override
  String toString() {
    return 'PlayerEvent.playSong(index: $index, mysongs: $mysongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaySongImpl &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._mysongs, _mysongs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(_mysongs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaySongImplCopyWith<_$PlaySongImpl> get copyWith =>
      __$$PlaySongImplCopyWithImpl<_$PlaySongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, List<MySongModel> mysongs) playSong,
    required TResult Function() pauseSong,
    required TResult Function() continueSong,
  }) {
    return playSong(index, mysongs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, List<MySongModel> mysongs)? playSong,
    TResult? Function()? pauseSong,
    TResult? Function()? continueSong,
  }) {
    return playSong?.call(index, mysongs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<MySongModel> mysongs)? playSong,
    TResult Function()? pauseSong,
    TResult Function()? continueSong,
    required TResult orElse(),
  }) {
    if (playSong != null) {
      return playSong(index, mysongs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaySong value) playSong,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(ContinueSong value) continueSong,
  }) {
    return playSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(ContinueSong value)? continueSong,
  }) {
    return playSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaySong value)? playSong,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(ContinueSong value)? continueSong,
    required TResult orElse(),
  }) {
    if (playSong != null) {
      return playSong(this);
    }
    return orElse();
  }
}

abstract class PlaySong implements PlayerEvent {
  const factory PlaySong(
      {required final int index,
      required final List<MySongModel> mysongs}) = _$PlaySongImpl;

  int get index;
  List<MySongModel> get mysongs;
  @JsonKey(ignore: true)
  _$$PlaySongImplCopyWith<_$PlaySongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseSongImplCopyWith<$Res> {
  factory _$$PauseSongImplCopyWith(
          _$PauseSongImpl value, $Res Function(_$PauseSongImpl) then) =
      __$$PauseSongImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseSongImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PauseSongImpl>
    implements _$$PauseSongImplCopyWith<$Res> {
  __$$PauseSongImplCopyWithImpl(
      _$PauseSongImpl _value, $Res Function(_$PauseSongImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseSongImpl implements PauseSong {
  _$PauseSongImpl();

  @override
  String toString() {
    return 'PlayerEvent.pauseSong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseSongImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, List<MySongModel> mysongs) playSong,
    required TResult Function() pauseSong,
    required TResult Function() continueSong,
  }) {
    return pauseSong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, List<MySongModel> mysongs)? playSong,
    TResult? Function()? pauseSong,
    TResult? Function()? continueSong,
  }) {
    return pauseSong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<MySongModel> mysongs)? playSong,
    TResult Function()? pauseSong,
    TResult Function()? continueSong,
    required TResult orElse(),
  }) {
    if (pauseSong != null) {
      return pauseSong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaySong value) playSong,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(ContinueSong value) continueSong,
  }) {
    return pauseSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(ContinueSong value)? continueSong,
  }) {
    return pauseSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaySong value)? playSong,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(ContinueSong value)? continueSong,
    required TResult orElse(),
  }) {
    if (pauseSong != null) {
      return pauseSong(this);
    }
    return orElse();
  }
}

abstract class PauseSong implements PlayerEvent {
  factory PauseSong() = _$PauseSongImpl;
}

/// @nodoc
abstract class _$$ContinueSongImplCopyWith<$Res> {
  factory _$$ContinueSongImplCopyWith(
          _$ContinueSongImpl value, $Res Function(_$ContinueSongImpl) then) =
      __$$ContinueSongImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContinueSongImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$ContinueSongImpl>
    implements _$$ContinueSongImplCopyWith<$Res> {
  __$$ContinueSongImplCopyWithImpl(
      _$ContinueSongImpl _value, $Res Function(_$ContinueSongImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContinueSongImpl implements ContinueSong {
  _$ContinueSongImpl();

  @override
  String toString() {
    return 'PlayerEvent.continueSong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContinueSongImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, List<MySongModel> mysongs) playSong,
    required TResult Function() pauseSong,
    required TResult Function() continueSong,
  }) {
    return continueSong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, List<MySongModel> mysongs)? playSong,
    TResult? Function()? pauseSong,
    TResult? Function()? continueSong,
  }) {
    return continueSong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<MySongModel> mysongs)? playSong,
    TResult Function()? pauseSong,
    TResult Function()? continueSong,
    required TResult orElse(),
  }) {
    if (continueSong != null) {
      return continueSong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaySong value) playSong,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(ContinueSong value) continueSong,
  }) {
    return continueSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(ContinueSong value)? continueSong,
  }) {
    return continueSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaySong value)? playSong,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(ContinueSong value)? continueSong,
    required TResult orElse(),
  }) {
    if (continueSong != null) {
      return continueSong(this);
    }
    return orElse();
  }
}

abstract class ContinueSong implements PlayerEvent {
  factory ContinueSong() = _$ContinueSongImpl;
}

/// @nodoc
mixin _$PlayerState {
  int? get index => throw _privateConstructorUsedError;
  bool get playing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerStateCopyWith<PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
  @useResult
  $Res call({int? index, bool playing});
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? playing = null,
  }) {
    return _then(_value.copyWith(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      playing: null == playing
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerStateImplCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$$PlayerStateImplCopyWith(
          _$PlayerStateImpl value, $Res Function(_$PlayerStateImpl) then) =
      __$$PlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index, bool playing});
}

/// @nodoc
class __$$PlayerStateImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateImpl>
    implements _$$PlayerStateImplCopyWith<$Res> {
  __$$PlayerStateImplCopyWithImpl(
      _$PlayerStateImpl _value, $Res Function(_$PlayerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? playing = null,
  }) {
    return _then(_$PlayerStateImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      playing: null == playing
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayerStateImpl implements _PlayerState {
  const _$PlayerStateImpl({required this.index, required this.playing});

  @override
  final int? index;
  @override
  final bool playing;

  @override
  String toString() {
    return 'PlayerState(index: $index, playing: $playing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.playing, playing) || other.playing == playing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, playing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      __$$PlayerStateImplCopyWithImpl<_$PlayerStateImpl>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState(
      {required final int? index,
      required final bool playing}) = _$PlayerStateImpl;

  @override
  int? get index;
  @override
  bool get playing;
  @override
  @JsonKey(ignore: true)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
