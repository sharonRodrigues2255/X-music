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
    required TResult Function(int? index, List<MySongModel> mysongs) playSong,
    required TResult Function() pauseSong,
    required TResult Function() continueSong,
    required TResult Function(int seektime) onSeek,
    required TResult Function(bool loop, bool shuffle) loopAndShuffle,
    required TResult Function(bool isfavorite) isFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult? Function()? pauseSong,
    TResult? Function()? continueSong,
    TResult? Function(int seektime)? onSeek,
    TResult? Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult? Function(bool isfavorite)? isFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult Function()? pauseSong,
    TResult Function()? continueSong,
    TResult Function(int seektime)? onSeek,
    TResult Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult Function(bool isfavorite)? isFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaySong value) playSong,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(ContinueSong value) continueSong,
    required TResult Function(OnSeek value) onSeek,
    required TResult Function(LoopAndShuffle value) loopAndShuffle,
    required TResult Function(Isfavorite value) isFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(ContinueSong value)? continueSong,
    TResult? Function(OnSeek value)? onSeek,
    TResult? Function(LoopAndShuffle value)? loopAndShuffle,
    TResult? Function(Isfavorite value)? isFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaySong value)? playSong,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(ContinueSong value)? continueSong,
    TResult Function(OnSeek value)? onSeek,
    TResult Function(LoopAndShuffle value)? loopAndShuffle,
    TResult Function(Isfavorite value)? isFavorite,
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
  $Res call({int? index, List<MySongModel> mysongs});
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
    Object? index = freezed,
    Object? mysongs = null,
  }) {
    return _then(_$PlaySongImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
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
  final int? index;
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
    required TResult Function(int? index, List<MySongModel> mysongs) playSong,
    required TResult Function() pauseSong,
    required TResult Function() continueSong,
    required TResult Function(int seektime) onSeek,
    required TResult Function(bool loop, bool shuffle) loopAndShuffle,
    required TResult Function(bool isfavorite) isFavorite,
  }) {
    return playSong(index, mysongs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult? Function()? pauseSong,
    TResult? Function()? continueSong,
    TResult? Function(int seektime)? onSeek,
    TResult? Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult? Function(bool isfavorite)? isFavorite,
  }) {
    return playSong?.call(index, mysongs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult Function()? pauseSong,
    TResult Function()? continueSong,
    TResult Function(int seektime)? onSeek,
    TResult Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult Function(bool isfavorite)? isFavorite,
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
    required TResult Function(OnSeek value) onSeek,
    required TResult Function(LoopAndShuffle value) loopAndShuffle,
    required TResult Function(Isfavorite value) isFavorite,
  }) {
    return playSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(ContinueSong value)? continueSong,
    TResult? Function(OnSeek value)? onSeek,
    TResult? Function(LoopAndShuffle value)? loopAndShuffle,
    TResult? Function(Isfavorite value)? isFavorite,
  }) {
    return playSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaySong value)? playSong,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(ContinueSong value)? continueSong,
    TResult Function(OnSeek value)? onSeek,
    TResult Function(LoopAndShuffle value)? loopAndShuffle,
    TResult Function(Isfavorite value)? isFavorite,
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
      {required final int? index,
      required final List<MySongModel> mysongs}) = _$PlaySongImpl;

  int? get index;
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
    required TResult Function(int? index, List<MySongModel> mysongs) playSong,
    required TResult Function() pauseSong,
    required TResult Function() continueSong,
    required TResult Function(int seektime) onSeek,
    required TResult Function(bool loop, bool shuffle) loopAndShuffle,
    required TResult Function(bool isfavorite) isFavorite,
  }) {
    return pauseSong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult? Function()? pauseSong,
    TResult? Function()? continueSong,
    TResult? Function(int seektime)? onSeek,
    TResult? Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult? Function(bool isfavorite)? isFavorite,
  }) {
    return pauseSong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult Function()? pauseSong,
    TResult Function()? continueSong,
    TResult Function(int seektime)? onSeek,
    TResult Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult Function(bool isfavorite)? isFavorite,
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
    required TResult Function(OnSeek value) onSeek,
    required TResult Function(LoopAndShuffle value) loopAndShuffle,
    required TResult Function(Isfavorite value) isFavorite,
  }) {
    return pauseSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(ContinueSong value)? continueSong,
    TResult? Function(OnSeek value)? onSeek,
    TResult? Function(LoopAndShuffle value)? loopAndShuffle,
    TResult? Function(Isfavorite value)? isFavorite,
  }) {
    return pauseSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaySong value)? playSong,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(ContinueSong value)? continueSong,
    TResult Function(OnSeek value)? onSeek,
    TResult Function(LoopAndShuffle value)? loopAndShuffle,
    TResult Function(Isfavorite value)? isFavorite,
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
    required TResult Function(int? index, List<MySongModel> mysongs) playSong,
    required TResult Function() pauseSong,
    required TResult Function() continueSong,
    required TResult Function(int seektime) onSeek,
    required TResult Function(bool loop, bool shuffle) loopAndShuffle,
    required TResult Function(bool isfavorite) isFavorite,
  }) {
    return continueSong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult? Function()? pauseSong,
    TResult? Function()? continueSong,
    TResult? Function(int seektime)? onSeek,
    TResult? Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult? Function(bool isfavorite)? isFavorite,
  }) {
    return continueSong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult Function()? pauseSong,
    TResult Function()? continueSong,
    TResult Function(int seektime)? onSeek,
    TResult Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult Function(bool isfavorite)? isFavorite,
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
    required TResult Function(OnSeek value) onSeek,
    required TResult Function(LoopAndShuffle value) loopAndShuffle,
    required TResult Function(Isfavorite value) isFavorite,
  }) {
    return continueSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(ContinueSong value)? continueSong,
    TResult? Function(OnSeek value)? onSeek,
    TResult? Function(LoopAndShuffle value)? loopAndShuffle,
    TResult? Function(Isfavorite value)? isFavorite,
  }) {
    return continueSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaySong value)? playSong,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(ContinueSong value)? continueSong,
    TResult Function(OnSeek value)? onSeek,
    TResult Function(LoopAndShuffle value)? loopAndShuffle,
    TResult Function(Isfavorite value)? isFavorite,
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
abstract class _$$OnSeekImplCopyWith<$Res> {
  factory _$$OnSeekImplCopyWith(
          _$OnSeekImpl value, $Res Function(_$OnSeekImpl) then) =
      __$$OnSeekImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int seektime});
}

/// @nodoc
class __$$OnSeekImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$OnSeekImpl>
    implements _$$OnSeekImplCopyWith<$Res> {
  __$$OnSeekImplCopyWithImpl(
      _$OnSeekImpl _value, $Res Function(_$OnSeekImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seektime = null,
  }) {
    return _then(_$OnSeekImpl(
      null == seektime
          ? _value.seektime
          : seektime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnSeekImpl implements OnSeek {
  _$OnSeekImpl(this.seektime);

  @override
  final int seektime;

  @override
  String toString() {
    return 'PlayerEvent.onSeek(seektime: $seektime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSeekImpl &&
            (identical(other.seektime, seektime) ||
                other.seektime == seektime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seektime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSeekImplCopyWith<_$OnSeekImpl> get copyWith =>
      __$$OnSeekImplCopyWithImpl<_$OnSeekImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? index, List<MySongModel> mysongs) playSong,
    required TResult Function() pauseSong,
    required TResult Function() continueSong,
    required TResult Function(int seektime) onSeek,
    required TResult Function(bool loop, bool shuffle) loopAndShuffle,
    required TResult Function(bool isfavorite) isFavorite,
  }) {
    return onSeek(seektime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult? Function()? pauseSong,
    TResult? Function()? continueSong,
    TResult? Function(int seektime)? onSeek,
    TResult? Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult? Function(bool isfavorite)? isFavorite,
  }) {
    return onSeek?.call(seektime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult Function()? pauseSong,
    TResult Function()? continueSong,
    TResult Function(int seektime)? onSeek,
    TResult Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult Function(bool isfavorite)? isFavorite,
    required TResult orElse(),
  }) {
    if (onSeek != null) {
      return onSeek(seektime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaySong value) playSong,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(ContinueSong value) continueSong,
    required TResult Function(OnSeek value) onSeek,
    required TResult Function(LoopAndShuffle value) loopAndShuffle,
    required TResult Function(Isfavorite value) isFavorite,
  }) {
    return onSeek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(ContinueSong value)? continueSong,
    TResult? Function(OnSeek value)? onSeek,
    TResult? Function(LoopAndShuffle value)? loopAndShuffle,
    TResult? Function(Isfavorite value)? isFavorite,
  }) {
    return onSeek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaySong value)? playSong,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(ContinueSong value)? continueSong,
    TResult Function(OnSeek value)? onSeek,
    TResult Function(LoopAndShuffle value)? loopAndShuffle,
    TResult Function(Isfavorite value)? isFavorite,
    required TResult orElse(),
  }) {
    if (onSeek != null) {
      return onSeek(this);
    }
    return orElse();
  }
}

abstract class OnSeek implements PlayerEvent {
  factory OnSeek(final int seektime) = _$OnSeekImpl;

  int get seektime;
  @JsonKey(ignore: true)
  _$$OnSeekImplCopyWith<_$OnSeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoopAndShuffleImplCopyWith<$Res> {
  factory _$$LoopAndShuffleImplCopyWith(_$LoopAndShuffleImpl value,
          $Res Function(_$LoopAndShuffleImpl) then) =
      __$$LoopAndShuffleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool loop, bool shuffle});
}

/// @nodoc
class __$$LoopAndShuffleImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$LoopAndShuffleImpl>
    implements _$$LoopAndShuffleImplCopyWith<$Res> {
  __$$LoopAndShuffleImplCopyWithImpl(
      _$LoopAndShuffleImpl _value, $Res Function(_$LoopAndShuffleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loop = null,
    Object? shuffle = null,
  }) {
    return _then(_$LoopAndShuffleImpl(
      loop: null == loop
          ? _value.loop
          : loop // ignore: cast_nullable_to_non_nullable
              as bool,
      shuffle: null == shuffle
          ? _value.shuffle
          : shuffle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoopAndShuffleImpl implements LoopAndShuffle {
  _$LoopAndShuffleImpl({required this.loop, required this.shuffle});

  @override
  final bool loop;
  @override
  final bool shuffle;

  @override
  String toString() {
    return 'PlayerEvent.loopAndShuffle(loop: $loop, shuffle: $shuffle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoopAndShuffleImpl &&
            (identical(other.loop, loop) || other.loop == loop) &&
            (identical(other.shuffle, shuffle) || other.shuffle == shuffle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loop, shuffle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoopAndShuffleImplCopyWith<_$LoopAndShuffleImpl> get copyWith =>
      __$$LoopAndShuffleImplCopyWithImpl<_$LoopAndShuffleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? index, List<MySongModel> mysongs) playSong,
    required TResult Function() pauseSong,
    required TResult Function() continueSong,
    required TResult Function(int seektime) onSeek,
    required TResult Function(bool loop, bool shuffle) loopAndShuffle,
    required TResult Function(bool isfavorite) isFavorite,
  }) {
    return loopAndShuffle(loop, shuffle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult? Function()? pauseSong,
    TResult? Function()? continueSong,
    TResult? Function(int seektime)? onSeek,
    TResult? Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult? Function(bool isfavorite)? isFavorite,
  }) {
    return loopAndShuffle?.call(loop, shuffle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult Function()? pauseSong,
    TResult Function()? continueSong,
    TResult Function(int seektime)? onSeek,
    TResult Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult Function(bool isfavorite)? isFavorite,
    required TResult orElse(),
  }) {
    if (loopAndShuffle != null) {
      return loopAndShuffle(loop, shuffle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaySong value) playSong,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(ContinueSong value) continueSong,
    required TResult Function(OnSeek value) onSeek,
    required TResult Function(LoopAndShuffle value) loopAndShuffle,
    required TResult Function(Isfavorite value) isFavorite,
  }) {
    return loopAndShuffle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(ContinueSong value)? continueSong,
    TResult? Function(OnSeek value)? onSeek,
    TResult? Function(LoopAndShuffle value)? loopAndShuffle,
    TResult? Function(Isfavorite value)? isFavorite,
  }) {
    return loopAndShuffle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaySong value)? playSong,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(ContinueSong value)? continueSong,
    TResult Function(OnSeek value)? onSeek,
    TResult Function(LoopAndShuffle value)? loopAndShuffle,
    TResult Function(Isfavorite value)? isFavorite,
    required TResult orElse(),
  }) {
    if (loopAndShuffle != null) {
      return loopAndShuffle(this);
    }
    return orElse();
  }
}

abstract class LoopAndShuffle implements PlayerEvent {
  factory LoopAndShuffle(
      {required final bool loop,
      required final bool shuffle}) = _$LoopAndShuffleImpl;

  bool get loop;
  bool get shuffle;
  @JsonKey(ignore: true)
  _$$LoopAndShuffleImplCopyWith<_$LoopAndShuffleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsfavoriteImplCopyWith<$Res> {
  factory _$$IsfavoriteImplCopyWith(
          _$IsfavoriteImpl value, $Res Function(_$IsfavoriteImpl) then) =
      __$$IsfavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isfavorite});
}

/// @nodoc
class __$$IsfavoriteImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$IsfavoriteImpl>
    implements _$$IsfavoriteImplCopyWith<$Res> {
  __$$IsfavoriteImplCopyWithImpl(
      _$IsfavoriteImpl _value, $Res Function(_$IsfavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isfavorite = null,
  }) {
    return _then(_$IsfavoriteImpl(
      isfavorite: null == isfavorite
          ? _value.isfavorite
          : isfavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsfavoriteImpl implements Isfavorite {
  _$IsfavoriteImpl({required this.isfavorite});

  @override
  final bool isfavorite;

  @override
  String toString() {
    return 'PlayerEvent.isFavorite(isfavorite: $isfavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsfavoriteImpl &&
            (identical(other.isfavorite, isfavorite) ||
                other.isfavorite == isfavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isfavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsfavoriteImplCopyWith<_$IsfavoriteImpl> get copyWith =>
      __$$IsfavoriteImplCopyWithImpl<_$IsfavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? index, List<MySongModel> mysongs) playSong,
    required TResult Function() pauseSong,
    required TResult Function() continueSong,
    required TResult Function(int seektime) onSeek,
    required TResult Function(bool loop, bool shuffle) loopAndShuffle,
    required TResult Function(bool isfavorite) isFavorite,
  }) {
    return isFavorite(isfavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult? Function()? pauseSong,
    TResult? Function()? continueSong,
    TResult? Function(int seektime)? onSeek,
    TResult? Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult? Function(bool isfavorite)? isFavorite,
  }) {
    return isFavorite?.call(isfavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? index, List<MySongModel> mysongs)? playSong,
    TResult Function()? pauseSong,
    TResult Function()? continueSong,
    TResult Function(int seektime)? onSeek,
    TResult Function(bool loop, bool shuffle)? loopAndShuffle,
    TResult Function(bool isfavorite)? isFavorite,
    required TResult orElse(),
  }) {
    if (isFavorite != null) {
      return isFavorite(isfavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaySong value) playSong,
    required TResult Function(PauseSong value) pauseSong,
    required TResult Function(ContinueSong value) continueSong,
    required TResult Function(OnSeek value) onSeek,
    required TResult Function(LoopAndShuffle value) loopAndShuffle,
    required TResult Function(Isfavorite value) isFavorite,
  }) {
    return isFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaySong value)? playSong,
    TResult? Function(PauseSong value)? pauseSong,
    TResult? Function(ContinueSong value)? continueSong,
    TResult? Function(OnSeek value)? onSeek,
    TResult? Function(LoopAndShuffle value)? loopAndShuffle,
    TResult? Function(Isfavorite value)? isFavorite,
  }) {
    return isFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaySong value)? playSong,
    TResult Function(PauseSong value)? pauseSong,
    TResult Function(ContinueSong value)? continueSong,
    TResult Function(OnSeek value)? onSeek,
    TResult Function(LoopAndShuffle value)? loopAndShuffle,
    TResult Function(Isfavorite value)? isFavorite,
    required TResult orElse(),
  }) {
    if (isFavorite != null) {
      return isFavorite(this);
    }
    return orElse();
  }
}

abstract class Isfavorite implements PlayerEvent {
  factory Isfavorite({required final bool isfavorite}) = _$IsfavoriteImpl;

  bool get isfavorite;
  @JsonKey(ignore: true)
  _$$IsfavoriteImplCopyWith<_$IsfavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayerState {
  int? get index => throw _privateConstructorUsedError;
  bool get playing => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  bool get loop => throw _privateConstructorUsedError;
  bool get shuffle => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;
  List<MySongModel> get songs => throw _privateConstructorUsedError;
  bool? get miniOn => throw _privateConstructorUsedError;
  bool get randomGenerated => throw _privateConstructorUsedError;

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
  $Res call(
      {int? index,
      bool playing,
      int position,
      bool loop,
      bool shuffle,
      bool favorite,
      List<MySongModel> songs,
      bool? miniOn,
      bool randomGenerated});
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
    Object? position = null,
    Object? loop = null,
    Object? shuffle = null,
    Object? favorite = null,
    Object? songs = null,
    Object? miniOn = freezed,
    Object? randomGenerated = null,
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
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      loop: null == loop
          ? _value.loop
          : loop // ignore: cast_nullable_to_non_nullable
              as bool,
      shuffle: null == shuffle
          ? _value.shuffle
          : shuffle // ignore: cast_nullable_to_non_nullable
              as bool,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<MySongModel>,
      miniOn: freezed == miniOn
          ? _value.miniOn
          : miniOn // ignore: cast_nullable_to_non_nullable
              as bool?,
      randomGenerated: null == randomGenerated
          ? _value.randomGenerated
          : randomGenerated // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {int? index,
      bool playing,
      int position,
      bool loop,
      bool shuffle,
      bool favorite,
      List<MySongModel> songs,
      bool? miniOn,
      bool randomGenerated});
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
    Object? position = null,
    Object? loop = null,
    Object? shuffle = null,
    Object? favorite = null,
    Object? songs = null,
    Object? miniOn = freezed,
    Object? randomGenerated = null,
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
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      loop: null == loop
          ? _value.loop
          : loop // ignore: cast_nullable_to_non_nullable
              as bool,
      shuffle: null == shuffle
          ? _value.shuffle
          : shuffle // ignore: cast_nullable_to_non_nullable
              as bool,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<MySongModel>,
      miniOn: freezed == miniOn
          ? _value.miniOn
          : miniOn // ignore: cast_nullable_to_non_nullable
              as bool?,
      randomGenerated: null == randomGenerated
          ? _value.randomGenerated
          : randomGenerated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayerStateImpl implements _PlayerState {
  const _$PlayerStateImpl(
      {required this.index,
      required this.playing,
      required this.position,
      required this.loop,
      required this.shuffle,
      required this.favorite,
      required final List<MySongModel> songs,
      required this.miniOn,
      required this.randomGenerated})
      : _songs = songs;

  @override
  final int? index;
  @override
  final bool playing;
  @override
  final int position;
  @override
  final bool loop;
  @override
  final bool shuffle;
  @override
  final bool favorite;
  final List<MySongModel> _songs;
  @override
  List<MySongModel> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  final bool? miniOn;
  @override
  final bool randomGenerated;

  @override
  String toString() {
    return 'PlayerState(index: $index, playing: $playing, position: $position, loop: $loop, shuffle: $shuffle, favorite: $favorite, songs: $songs, miniOn: $miniOn, randomGenerated: $randomGenerated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.playing, playing) || other.playing == playing) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.loop, loop) || other.loop == loop) &&
            (identical(other.shuffle, shuffle) || other.shuffle == shuffle) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            const DeepCollectionEquality().equals(other._songs, _songs) &&
            (identical(other.miniOn, miniOn) || other.miniOn == miniOn) &&
            (identical(other.randomGenerated, randomGenerated) ||
                other.randomGenerated == randomGenerated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      index,
      playing,
      position,
      loop,
      shuffle,
      favorite,
      const DeepCollectionEquality().hash(_songs),
      miniOn,
      randomGenerated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      __$$PlayerStateImplCopyWithImpl<_$PlayerStateImpl>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState(
      {required final int? index,
      required final bool playing,
      required final int position,
      required final bool loop,
      required final bool shuffle,
      required final bool favorite,
      required final List<MySongModel> songs,
      required final bool? miniOn,
      required final bool randomGenerated}) = _$PlayerStateImpl;

  @override
  int? get index;
  @override
  bool get playing;
  @override
  int get position;
  @override
  bool get loop;
  @override
  bool get shuffle;
  @override
  bool get favorite;
  @override
  List<MySongModel> get songs;
  @override
  bool? get miniOn;
  @override
  bool get randomGenerated;
  @override
  @JsonKey(ignore: true)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
