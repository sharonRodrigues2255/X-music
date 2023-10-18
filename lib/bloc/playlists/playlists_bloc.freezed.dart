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
    required TResult Function(List<MyPlaylistModel> playlists) started,
    required TResult Function(MyPlaylistModel playlist) addPlaylist,
    required TResult Function(MySongModel song, int index) addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MyPlaylistModel> playlists)? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
    TResult? Function(MySongModel song, int index)? addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyPlaylistModel> playlists)? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
    TResult Function(MySongModel song, int index)? addSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddPlaylist value) addPlaylist,
    required TResult Function(AddSong value) addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
    TResult? Function(AddSong value)? addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
    TResult Function(AddSong value)? addSong,
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
  @useResult
  $Res call({List<MyPlaylistModel> playlists});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlists = null,
  }) {
    return _then(_$StartedImpl(
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<MyPlaylistModel>,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl({required final List<MyPlaylistModel> playlists})
      : _playlists = playlists;

  final List<MyPlaylistModel> _playlists;
  @override
  List<MyPlaylistModel> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  @override
  String toString() {
    return 'PlaylistsEvent.started(playlists: $playlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_playlists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MyPlaylistModel> playlists) started,
    required TResult Function(MyPlaylistModel playlist) addPlaylist,
    required TResult Function(MySongModel song, int index) addSong,
  }) {
    return started(playlists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MyPlaylistModel> playlists)? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
    TResult? Function(MySongModel song, int index)? addSong,
  }) {
    return started?.call(playlists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyPlaylistModel> playlists)? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
    TResult Function(MySongModel song, int index)? addSong,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(playlists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddPlaylist value) addPlaylist,
    required TResult Function(AddSong value) addSong,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
    TResult? Function(AddSong value)? addSong,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
    TResult Function(AddSong value)? addSong,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements PlaylistsEvent {
  const factory Started({required final List<MyPlaylistModel> playlists}) =
      _$StartedImpl;

  List<MyPlaylistModel> get playlists;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPlaylistImplCopyWith<$Res> {
  factory _$$AddPlaylistImplCopyWith(
          _$AddPlaylistImpl value, $Res Function(_$AddPlaylistImpl) then) =
      __$$AddPlaylistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyPlaylistModel playlist});
}

/// @nodoc
class __$$AddPlaylistImplCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res, _$AddPlaylistImpl>
    implements _$$AddPlaylistImplCopyWith<$Res> {
  __$$AddPlaylistImplCopyWithImpl(
      _$AddPlaylistImpl _value, $Res Function(_$AddPlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = null,
  }) {
    return _then(_$AddPlaylistImpl(
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as MyPlaylistModel,
    ));
  }
}

/// @nodoc

class _$AddPlaylistImpl implements AddPlaylist {
  _$AddPlaylistImpl({required this.playlist});

  @override
  final MyPlaylistModel playlist;

  @override
  String toString() {
    return 'PlaylistsEvent.addPlaylist(playlist: $playlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlaylistImpl &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPlaylistImplCopyWith<_$AddPlaylistImpl> get copyWith =>
      __$$AddPlaylistImplCopyWithImpl<_$AddPlaylistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MyPlaylistModel> playlists) started,
    required TResult Function(MyPlaylistModel playlist) addPlaylist,
    required TResult Function(MySongModel song, int index) addSong,
  }) {
    return addPlaylist(playlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MyPlaylistModel> playlists)? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
    TResult? Function(MySongModel song, int index)? addSong,
  }) {
    return addPlaylist?.call(playlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyPlaylistModel> playlists)? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
    TResult Function(MySongModel song, int index)? addSong,
    required TResult orElse(),
  }) {
    if (addPlaylist != null) {
      return addPlaylist(playlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddPlaylist value) addPlaylist,
    required TResult Function(AddSong value) addSong,
  }) {
    return addPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
    TResult? Function(AddSong value)? addSong,
  }) {
    return addPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
    TResult Function(AddSong value)? addSong,
    required TResult orElse(),
  }) {
    if (addPlaylist != null) {
      return addPlaylist(this);
    }
    return orElse();
  }
}

abstract class AddPlaylist implements PlaylistsEvent {
  factory AddPlaylist({required final MyPlaylistModel playlist}) =
      _$AddPlaylistImpl;

  MyPlaylistModel get playlist;
  @JsonKey(ignore: true)
  _$$AddPlaylistImplCopyWith<_$AddPlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSongImplCopyWith<$Res> {
  factory _$$AddSongImplCopyWith(
          _$AddSongImpl value, $Res Function(_$AddSongImpl) then) =
      __$$AddSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MySongModel song, int index});
}

/// @nodoc
class __$$AddSongImplCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res, _$AddSongImpl>
    implements _$$AddSongImplCopyWith<$Res> {
  __$$AddSongImplCopyWithImpl(
      _$AddSongImpl _value, $Res Function(_$AddSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
    Object? index = null,
  }) {
    return _then(_$AddSongImpl(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as MySongModel,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddSongImpl implements AddSong {
  _$AddSongImpl({required this.song, required this.index});

  @override
  final MySongModel song;
  @override
  final int index;

  @override
  String toString() {
    return 'PlaylistsEvent.addSong(song: $song, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSongImpl &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, song, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSongImplCopyWith<_$AddSongImpl> get copyWith =>
      __$$AddSongImplCopyWithImpl<_$AddSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MyPlaylistModel> playlists) started,
    required TResult Function(MyPlaylistModel playlist) addPlaylist,
    required TResult Function(MySongModel song, int index) addSong,
  }) {
    return addSong(song, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MyPlaylistModel> playlists)? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
    TResult? Function(MySongModel song, int index)? addSong,
  }) {
    return addSong?.call(song, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyPlaylistModel> playlists)? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
    TResult Function(MySongModel song, int index)? addSong,
    required TResult orElse(),
  }) {
    if (addSong != null) {
      return addSong(song, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddPlaylist value) addPlaylist,
    required TResult Function(AddSong value) addSong,
  }) {
    return addSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
    TResult? Function(AddSong value)? addSong,
  }) {
    return addSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
    TResult Function(AddSong value)? addSong,
    required TResult orElse(),
  }) {
    if (addSong != null) {
      return addSong(this);
    }
    return orElse();
  }
}

abstract class AddSong implements PlaylistsEvent {
  factory AddSong({required final MySongModel song, required final int index}) =
      _$AddSongImpl;

  MySongModel get song;
  int get index;
  @JsonKey(ignore: true)
  _$$AddSongImplCopyWith<_$AddSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistsState {
  List<MyPlaylistModel> get playlistModels =>
      throw _privateConstructorUsedError;
  bool get added => throw _privateConstructorUsedError;

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
  $Res call({List<MyPlaylistModel> playlistModels, bool added});
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
    Object? playlistModels = null,
    Object? added = null,
  }) {
    return _then(_value.copyWith(
      playlistModels: null == playlistModels
          ? _value.playlistModels
          : playlistModels // ignore: cast_nullable_to_non_nullable
              as List<MyPlaylistModel>,
      added: null == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({List<MyPlaylistModel> playlistModels, bool added});
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
    Object? playlistModels = null,
    Object? added = null,
  }) {
    return _then(_$PlaylistsStateImpl(
      playlistModels: null == playlistModels
          ? _value._playlistModels
          : playlistModels // ignore: cast_nullable_to_non_nullable
              as List<MyPlaylistModel>,
      added: null == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlaylistsStateImpl implements _PlaylistsState {
  const _$PlaylistsStateImpl(
      {required final List<MyPlaylistModel> playlistModels,
      required this.added})
      : _playlistModels = playlistModels;

  final List<MyPlaylistModel> _playlistModels;
  @override
  List<MyPlaylistModel> get playlistModels {
    if (_playlistModels is EqualUnmodifiableListView) return _playlistModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistModels);
  }

  @override
  final bool added;

  @override
  String toString() {
    return 'PlaylistsState(playlistModels: $playlistModels, added: $added)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._playlistModels, _playlistModels) &&
            (identical(other.added, added) || other.added == added));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_playlistModels), added);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistsStateImplCopyWith<_$PlaylistsStateImpl> get copyWith =>
      __$$PlaylistsStateImplCopyWithImpl<_$PlaylistsStateImpl>(
          this, _$identity);
}

abstract class _PlaylistsState implements PlaylistsState {
  const factory _PlaylistsState(
      {required final List<MyPlaylistModel> playlistModels,
      required final bool added}) = _$PlaylistsStateImpl;

  @override
  List<MyPlaylistModel> get playlistModels;
  @override
  bool get added;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistsStateImplCopyWith<_$PlaylistsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
