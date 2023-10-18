part of 'playlists_bloc.dart';

@freezed
class PlaylistsState with _$PlaylistsState {
  const factory PlaylistsState(
      {required List<MyPlaylistModel> playlistModels}) = _PlaylistsState;

  factory PlaylistsState.Initial() => PlaylistsState(playlistModels: []);
}
