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
    required TResult Function(MyPlaylistModel playlist) addPlaylist,
    required TResult Function(MySongModel song, int index) addSong,
    required TResult Function(int index) deletePlaylist,
    required TResult Function(int songIndex, int playlistIndex) deleteSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
    TResult? Function(MySongModel song, int index)? addSong,
    TResult? Function(int index)? deletePlaylist,
    TResult? Function(int songIndex, int playlistIndex)? deleteSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
    TResult Function(MySongModel song, int index)? addSong,
    TResult Function(int index)? deletePlaylist,
    TResult Function(int songIndex, int playlistIndex)? deleteSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddPlaylist value) addPlaylist,
    required TResult Function(AddSong value) addSong,
    required TResult Function(DeletePlaylist value) deletePlaylist,
    required TResult Function(DeleteSong value) deleteSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(DeletePlaylist value)? deletePlaylist,
    TResult? Function(DeleteSong value)? deleteSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
    TResult Function(AddSong value)? addSong,
    TResult Function(DeletePlaylist value)? deletePlaylist,
    TResult Function(DeleteSong value)? deleteSong,
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

class _$StartedImpl implements Started {
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
    required TResult Function(MyPlaylistModel playlist) addPlaylist,
    required TResult Function(MySongModel song, int index) addSong,
    required TResult Function(int index) deletePlaylist,
    required TResult Function(int songIndex, int playlistIndex) deleteSong,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
    TResult? Function(MySongModel song, int index)? addSong,
    TResult? Function(int index)? deletePlaylist,
    TResult? Function(int songIndex, int playlistIndex)? deleteSong,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
    TResult Function(MySongModel song, int index)? addSong,
    TResult Function(int index)? deletePlaylist,
    TResult Function(int songIndex, int playlistIndex)? deleteSong,
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
    required TResult Function(Started value) started,
    required TResult Function(AddPlaylist value) addPlaylist,
    required TResult Function(AddSong value) addSong,
    required TResult Function(DeletePlaylist value) deletePlaylist,
    required TResult Function(DeleteSong value) deleteSong,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(DeletePlaylist value)? deletePlaylist,
    TResult? Function(DeleteSong value)? deleteSong,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
    TResult Function(AddSong value)? addSong,
    TResult Function(DeletePlaylist value)? deletePlaylist,
    TResult Function(DeleteSong value)? deleteSong,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements PlaylistsEvent {
  const factory Started() = _$StartedImpl;
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
    required TResult Function() started,
    required TResult Function(MyPlaylistModel playlist) addPlaylist,
    required TResult Function(MySongModel song, int index) addSong,
    required TResult Function(int index) deletePlaylist,
    required TResult Function(int songIndex, int playlistIndex) deleteSong,
  }) {
    return addPlaylist(playlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
    TResult? Function(MySongModel song, int index)? addSong,
    TResult? Function(int index)? deletePlaylist,
    TResult? Function(int songIndex, int playlistIndex)? deleteSong,
  }) {
    return addPlaylist?.call(playlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
    TResult Function(MySongModel song, int index)? addSong,
    TResult Function(int index)? deletePlaylist,
    TResult Function(int songIndex, int playlistIndex)? deleteSong,
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
    required TResult Function(DeletePlaylist value) deletePlaylist,
    required TResult Function(DeleteSong value) deleteSong,
  }) {
    return addPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(DeletePlaylist value)? deletePlaylist,
    TResult? Function(DeleteSong value)? deleteSong,
  }) {
    return addPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
    TResult Function(AddSong value)? addSong,
    TResult Function(DeletePlaylist value)? deletePlaylist,
    TResult Function(DeleteSong value)? deleteSong,
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
    required TResult Function() started,
    required TResult Function(MyPlaylistModel playlist) addPlaylist,
    required TResult Function(MySongModel song, int index) addSong,
    required TResult Function(int index) deletePlaylist,
    required TResult Function(int songIndex, int playlistIndex) deleteSong,
  }) {
    return addSong(song, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
    TResult? Function(MySongModel song, int index)? addSong,
    TResult? Function(int index)? deletePlaylist,
    TResult? Function(int songIndex, int playlistIndex)? deleteSong,
  }) {
    return addSong?.call(song, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
    TResult Function(MySongModel song, int index)? addSong,
    TResult Function(int index)? deletePlaylist,
    TResult Function(int songIndex, int playlistIndex)? deleteSong,
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
    required TResult Function(DeletePlaylist value) deletePlaylist,
    required TResult Function(DeleteSong value) deleteSong,
  }) {
    return addSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(DeletePlaylist value)? deletePlaylist,
    TResult? Function(DeleteSong value)? deleteSong,
  }) {
    return addSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
    TResult Function(AddSong value)? addSong,
    TResult Function(DeletePlaylist value)? deletePlaylist,
    TResult Function(DeleteSong value)? deleteSong,
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
abstract class _$$DeletePlaylistImplCopyWith<$Res> {
  factory _$$DeletePlaylistImplCopyWith(_$DeletePlaylistImpl value,
          $Res Function(_$DeletePlaylistImpl) then) =
      __$$DeletePlaylistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeletePlaylistImplCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res, _$DeletePlaylistImpl>
    implements _$$DeletePlaylistImplCopyWith<$Res> {
  __$$DeletePlaylistImplCopyWithImpl(
      _$DeletePlaylistImpl _value, $Res Function(_$DeletePlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeletePlaylistImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeletePlaylistImpl implements DeletePlaylist {
  _$DeletePlaylistImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'PlaylistsEvent.deletePlaylist(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePlaylistImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePlaylistImplCopyWith<_$DeletePlaylistImpl> get copyWith =>
      __$$DeletePlaylistImplCopyWithImpl<_$DeletePlaylistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MyPlaylistModel playlist) addPlaylist,
    required TResult Function(MySongModel song, int index) addSong,
    required TResult Function(int index) deletePlaylist,
    required TResult Function(int songIndex, int playlistIndex) deleteSong,
  }) {
    return deletePlaylist(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
    TResult? Function(MySongModel song, int index)? addSong,
    TResult? Function(int index)? deletePlaylist,
    TResult? Function(int songIndex, int playlistIndex)? deleteSong,
  }) {
    return deletePlaylist?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
    TResult Function(MySongModel song, int index)? addSong,
    TResult Function(int index)? deletePlaylist,
    TResult Function(int songIndex, int playlistIndex)? deleteSong,
    required TResult orElse(),
  }) {
    if (deletePlaylist != null) {
      return deletePlaylist(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddPlaylist value) addPlaylist,
    required TResult Function(AddSong value) addSong,
    required TResult Function(DeletePlaylist value) deletePlaylist,
    required TResult Function(DeleteSong value) deleteSong,
  }) {
    return deletePlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(DeletePlaylist value)? deletePlaylist,
    TResult? Function(DeleteSong value)? deleteSong,
  }) {
    return deletePlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
    TResult Function(AddSong value)? addSong,
    TResult Function(DeletePlaylist value)? deletePlaylist,
    TResult Function(DeleteSong value)? deleteSong,
    required TResult orElse(),
  }) {
    if (deletePlaylist != null) {
      return deletePlaylist(this);
    }
    return orElse();
  }
}

abstract class DeletePlaylist implements PlaylistsEvent {
  factory DeletePlaylist({required final int index}) = _$DeletePlaylistImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DeletePlaylistImplCopyWith<_$DeletePlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSongImplCopyWith<$Res> {
  factory _$$DeleteSongImplCopyWith(
          _$DeleteSongImpl value, $Res Function(_$DeleteSongImpl) then) =
      __$$DeleteSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int songIndex, int playlistIndex});
}

/// @nodoc
class __$$DeleteSongImplCopyWithImpl<$Res>
    extends _$PlaylistsEventCopyWithImpl<$Res, _$DeleteSongImpl>
    implements _$$DeleteSongImplCopyWith<$Res> {
  __$$DeleteSongImplCopyWithImpl(
      _$DeleteSongImpl _value, $Res Function(_$DeleteSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songIndex = null,
    Object? playlistIndex = null,
  }) {
    return _then(_$DeleteSongImpl(
      songIndex: null == songIndex
          ? _value.songIndex
          : songIndex // ignore: cast_nullable_to_non_nullable
              as int,
      playlistIndex: null == playlistIndex
          ? _value.playlistIndex
          : playlistIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteSongImpl implements DeleteSong {
  _$DeleteSongImpl({required this.songIndex, required this.playlistIndex});

  @override
  final int songIndex;
  @override
  final int playlistIndex;

  @override
  String toString() {
    return 'PlaylistsEvent.deleteSong(songIndex: $songIndex, playlistIndex: $playlistIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSongImpl &&
            (identical(other.songIndex, songIndex) ||
                other.songIndex == songIndex) &&
            (identical(other.playlistIndex, playlistIndex) ||
                other.playlistIndex == playlistIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, songIndex, playlistIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSongImplCopyWith<_$DeleteSongImpl> get copyWith =>
      __$$DeleteSongImplCopyWithImpl<_$DeleteSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MyPlaylistModel playlist) addPlaylist,
    required TResult Function(MySongModel song, int index) addSong,
    required TResult Function(int index) deletePlaylist,
    required TResult Function(int songIndex, int playlistIndex) deleteSong,
  }) {
    return deleteSong(songIndex, playlistIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
    TResult? Function(MySongModel song, int index)? addSong,
    TResult? Function(int index)? deletePlaylist,
    TResult? Function(int songIndex, int playlistIndex)? deleteSong,
  }) {
    return deleteSong?.call(songIndex, playlistIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
    TResult Function(MySongModel song, int index)? addSong,
    TResult Function(int index)? deletePlaylist,
    TResult Function(int songIndex, int playlistIndex)? deleteSong,
    required TResult orElse(),
  }) {
    if (deleteSong != null) {
      return deleteSong(songIndex, playlistIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddPlaylist value) addPlaylist,
    required TResult Function(AddSong value) addSong,
    required TResult Function(DeletePlaylist value) deletePlaylist,
    required TResult Function(DeleteSong value) deleteSong,
  }) {
    return deleteSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
    TResult? Function(AddSong value)? addSong,
    TResult? Function(DeletePlaylist value)? deletePlaylist,
    TResult? Function(DeleteSong value)? deleteSong,
  }) {
    return deleteSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
    TResult Function(AddSong value)? addSong,
    TResult Function(DeletePlaylist value)? deletePlaylist,
    TResult Function(DeleteSong value)? deleteSong,
    required TResult orElse(),
  }) {
    if (deleteSong != null) {
      return deleteSong(this);
    }
    return orElse();
  }
}

abstract class DeleteSong implements PlaylistsEvent {
  factory DeleteSong(
      {required final int songIndex,
      required final int playlistIndex}) = _$DeleteSongImpl;

  int get songIndex;
  int get playlistIndex;
  @JsonKey(ignore: true)
  _$$DeleteSongImplCopyWith<_$DeleteSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistsState {
  List<dynamic> get playlistModels => throw _privateConstructorUsedError;

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
  $Res call({List<dynamic> playlistModels});
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
  }) {
    return _then(_value.copyWith(
      playlistModels: null == playlistModels
          ? _value.playlistModels
          : playlistModels // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
  $Res call({List<dynamic> playlistModels});
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
  }) {
    return _then(_$PlaylistsStateImpl(
      playlistModels: null == playlistModels
          ? _value._playlistModels
          : playlistModels // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$PlaylistsStateImpl implements _PlaylistsState {
  const _$PlaylistsStateImpl({required final List<dynamic> playlistModels})
      : _playlistModels = playlistModels;

  final List<dynamic> _playlistModels;
  @override
  List<dynamic> get playlistModels {
    if (_playlistModels is EqualUnmodifiableListView) return _playlistModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistModels);
  }

  @override
  String toString() {
    return 'PlaylistsState(playlistModels: $playlistModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._playlistModels, _playlistModels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_playlistModels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistsStateImplCopyWith<_$PlaylistsStateImpl> get copyWith =>
      __$$PlaylistsStateImplCopyWithImpl<_$PlaylistsStateImpl>(
          this, _$identity);
}

abstract class _PlaylistsState implements PlaylistsState {
  const factory _PlaylistsState({required final List<dynamic> playlistModels}) =
      _$PlaylistsStateImpl;

  @override
  List<dynamic> get playlistModels;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistsStateImplCopyWith<_$PlaylistsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
