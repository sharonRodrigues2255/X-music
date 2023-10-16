part of 'playlists_bloc.dart';

@freezed
class PlaylistsState with _$PlaylistsState {
  factory PlaylistsState({required List<MySongModel> playlistsongs}) =
      _PlaylistsState;
  factory PlaylistsState.initial() => PlaylistsState(playlistsongs: []);
}
