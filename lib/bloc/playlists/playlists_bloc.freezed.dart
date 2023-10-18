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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MyPlaylistModel> playlists)? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyPlaylistModel> playlists)? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddPlaylist value) addPlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
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
  }) {
    return started(playlists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MyPlaylistModel> playlists)? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
  }) {
    return started?.call(playlists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyPlaylistModel> playlists)? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
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
  }) {
    return addPlaylist(playlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MyPlaylistModel> playlists)? started,
    TResult? Function(MyPlaylistModel playlist)? addPlaylist,
  }) {
    return addPlaylist?.call(playlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MyPlaylistModel> playlists)? started,
    TResult Function(MyPlaylistModel playlist)? addPlaylist,
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
  }) {
    return addPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddPlaylist value)? addPlaylist,
  }) {
    return addPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddPlaylist value)? addPlaylist,
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
mixin _$PlaylistsState {
  List<MyPlaylistModel> get playlistModels =>
      throw _privateConstructorUsedError;

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
  $Res call({List<MyPlaylistModel> playlistModels});
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
              as List<MyPlaylistModel>,
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
  $Res call({List<MyPlaylistModel> playlistModels});
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
              as List<MyPlaylistModel>,
    ));
  }
}

/// @nodoc

class _$PlaylistsStateImpl implements _PlaylistsState {
  const _$PlaylistsStateImpl(
      {required final List<MyPlaylistModel> playlistModels})
      : _playlistModels = playlistModels;

  final List<MyPlaylistModel> _playlistModels;
  @override
  List<MyPlaylistModel> get playlistModels {
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
  const factory _PlaylistsState(
          {required final List<MyPlaylistModel> playlistModels}) =
      _$PlaylistsStateImpl;

  @override
  List<MyPlaylistModel> get playlistModels;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistsStateImplCopyWith<_$PlaylistsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
