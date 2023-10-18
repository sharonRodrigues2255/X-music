part of 'playlists_bloc.dart';

@freezed
class PlaylistsState with _$PlaylistsState {
  const factory PlaylistsState(
      {required List playlistModels, required bool added}) = _PlaylistsState;

  factory PlaylistsState.initial() =>
      PlaylistsState(playlistModels: playlistmodels, added: false);
}
