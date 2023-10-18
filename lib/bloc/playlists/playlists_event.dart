part of 'playlists_bloc.dart';

@freezed
class PlaylistsEvent with _$PlaylistsEvent {
  const factory PlaylistsEvent.started(
      {required List<MyPlaylistModel> playlists}) = Started;

  factory PlaylistsEvent.addPlaylist({required MyPlaylistModel playlist}) =
      AddPlaylist;
}
