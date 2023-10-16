// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlists_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaylistsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MySongModel songModel) addToPLaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MySongModel songModel)? addToPLaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MySongModel songModel)? addToPLaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddToPlaylist value) addToPLaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddToPlaylist value)? addToPLaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddToPlaylist value)? addToPLaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistsEventCopyWith<$Res> {
  factory $PlaylistsEventCopyWith(
          PlaylistsEvent value, $Res Function(PlaylistsEvent) then) =
      _$PlaylistsEventCopyWithImpl<$Res, PlaylistsEvent>;
}

/// @nodoc
class _$PlaylistsEventCopyWithImpl<$Res, $Val extends PlaylistsEvent>
    implements $PlaylistsEventCopyWith<$Res> {
  _$PlaylistsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PlaylistsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MySongModel songModel) addToPLaylist,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MySongModel songModel)? addToPLaylist,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MySongModel songModel)? addToPLaylist,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddToPlaylist value) addToPLaylist,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddToPlaylist value)? addToPLaylist,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddToPlaylist value)? addToPLaylist,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PlaylistsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddToPlaylistImplCopyWith<$Res> {
  factory _$$AddToPlaylistImplCopyWith(
          _$AddToPlaylistImpl value, $Res Function(_$AddToPlaylistImpl) then) =
      __$$AddToPlaylistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MySongModel songModel});
}

/// @nodoc
class __$$AddToPlaylistImplCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res, _$AddToPlaylistImpl>
    implements _$$AddToPlaylistImplCopyWith<$Res> {
  __$$AddToPlaylistImplCopyWithImpl(
      _$AddToPlaylistImpl _value, $Res Function(_$AddToPlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songModel = null,
  }) {
    return _then(_$AddToPlaylistImpl(
      songModel: null == songModel
          ? _value.songModel
          : songModel // ignore: cast_nullable_to_non_nullable
              as MySongModel,
    ));
  }
}

/// @nodoc

class _$AddToPlaylistImpl implements AddToPlaylist {
  _$AddToPlaylistImpl({required this.songModel});

  @override
  final MySongModel songModel;

  @override
  String toString() {
    return 'PlaylistsEvent.addToPLaylist(songModel: $songModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToPlaylistImpl &&
            (identical(other.songModel, songModel) ||
                other.songModel == songModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, songModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToPlaylistImplCopyWith<_$AddToPlaylistImpl> get copyWith =>
      __$$AddToPlaylistImplCopyWithImpl<_$AddToPlaylistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MySongModel songModel) addToPLaylist,
  }) {
    return addToPLaylist(songModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MySongModel songModel)? addToPLaylist,
  }) {
    return addToPLaylist?.call(songModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MySongModel songModel)? addToPLaylist,
    required TResult orElse(),
  }) {
    if (addToPLaylist != null) {
      return addToPLaylist(songModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddToPlaylist value) addToPLaylist,
  }) {
    return addToPLaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddToPlaylist value)? addToPLaylist,
  }) {
    return addToPLaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddToPlaylist value)? addToPLaylist,
    required TResult orElse(),
  }) {
    if (addToPLaylist != null) {
      return addToPLaylist(this);
    }
    return orElse();
  }
}

abstract class AddToPlaylist implements PlaylistsEvent {
  factory AddToPlaylist({required final MySongModel songModel}) =
      _$AddToPlaylistImpl;

  MySongModel get songModel;
  @JsonKey(ignore: true)
  _$$AddToPlaylistImplCopyWith<_$AddToPlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistsState {
  List<MySongModel> get playlistsongs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistsStateCopyWith<PlaylistsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistsStateCopyWith<$Res> {
  factory $PlaylistsStateCopyWith(
          PlaylistsState value, $Res Function(PlaylistsState) then) =
      _$PlaylistsStateCopyWithImpl<$Res, PlaylistsState>;
  @useResult
  $Res call({List<MySongModel> playlistsongs});
}

/// @nodoc
class _$PlaylistsStateCopyWithImpl<$Res, $Val extends PlaylistsState>
    implements $PlaylistsStateCopyWith<$Res> {
  _$PlaylistsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistsongs = null,
  }) {
    return _then(_value.copyWith(
      playlistsongs: null == playlistsongs
          ? _value.playlistsongs
          : playlistsongs // ignore: cast_nullable_to_non_nullable
              as List<MySongModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistsStateImplCopyWith<$Res>
    implements $PlaylistsStateCopyWith<$Res> {
  factory _$$PlaylistsStateImplCopyWith(_$PlaylistsStateImpl value,
          $Res Function(_$PlaylistsStateImpl) then) =
      __$$PlaylistsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MySongModel> playlistsongs});
}

/// @nodoc
class __$$PlaylistsStateImplCopyWithImpl<$Res>
    extends _$PlaylistsStateCopyWithImpl<$Res, _$PlaylistsStateImpl>
    implements _$$PlaylistsStateImplCopyWith<$Res> {
  __$$PlaylistsStateImplCopyWithImpl(
      _$PlaylistsStateImpl _value, $Res Function(_$PlaylistsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistsongs = null,
  }) {
    return _then(_$PlaylistsStateImpl(
      playlistsongs: null == playlistsongs
          ? _value._playlistsongs
          : playlistsongs // ignore: cast_nullable_to_non_nullable
              as List<MySongModel>,
    ));
  }
}

/// @nodoc

class _$PlaylistsStateImpl implements _PlaylistsState {
  _$PlaylistsStateImpl({required final List<MySongModel> playlistsongs})
      : _playlistsongs = playlistsongs;

  final List<MySongModel> _playlistsongs;
  @override
  List<MySongModel> get playlistsongs {
    if (_playlistsongs is EqualUnmodifiableListView) return _playlistsongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistsongs);
  }

  @override
  String toString() {
    return 'PlaylistsState(playlistsongs: $playlistsongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._playlistsongs, _playlistsongs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_playlistsongs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistsStateImplCopyWith<_$PlaylistsStateImpl> get copyWith =>
      __$$PlaylistsStateImplCopyWithImpl<_$PlaylistsStateImpl>(
          this, _$identity);
}

abstract class _PlaylistsState implements PlaylistsState {
  factory _PlaylistsState({required final List<MySongModel> playlistsongs}) =
      _$PlaylistsStateImpl;

  @override
  List<MySongModel> get playlistsongs;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistsStateImplCopyWith<_$PlaylistsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
