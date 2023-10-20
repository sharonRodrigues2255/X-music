part of 'playlists_bloc.dart';

@freezed
class PlaylistsEvent with _$PlaylistsEvent {
  const factory PlaylistsEvent.started() = Started;

  factory PlaylistsEvent.addPlaylist({required MyPlaylistModel playlist}) =
      AddPlaylist;

  factory PlaylistsEvent.addSong(
      {required MySongModel song, required int index}) = AddSong;

  factory PlaylistsEvent.deletePlaylist({required int index}) = DeletePlaylist;

  factory PlaylistsEvent.deleteSong({
    required int songIndex,
    required int playlistIndex,
  }) = DeleteSong;
}
