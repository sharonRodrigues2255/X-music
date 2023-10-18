part of 'playlists_bloc.dart';

@freezed
class PlaylistsState with _$PlaylistsState {
  const factory PlaylistsState(
      {required List<MyPlaylistModel> playlistModels,
      required bool added}) = _PlaylistsState;

  factory PlaylistsState.Initial() =>
      PlaylistsState(playlistModels: playlistmodels, added: false);
}
