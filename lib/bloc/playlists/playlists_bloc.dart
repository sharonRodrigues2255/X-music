import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'playlists_event.dart';
part 'playlists_state.dart';
part 'playlists_bloc.freezed.dart';

var playerbloc = PlayerBloc();

class PlaylistsBloc extends Bloc<PlaylistsEvent, PlaylistsState> {
  var myDb = Hive.box("MySongBox");

  PlaylistsBloc() : super(PlaylistsState.initial()) {
    on<Started>((event, emit) async {
      final List playlistList = myDb.values.toList();
      emit(state.copyWith(playlistModels: playlistList));
    });

    on<AddPlaylist>((event, emit) async {
      myDb.put(event.playlist.id, event.playlist);
      final playlistList = myDb.values;

      emit(state.copyWith(playlistModels: List.from(playlistList)));
    });

    on<DeletePlaylist>((event, emit) {
      myDb.delete(event.index);
      final List playlistList = myDb.values.toList();
      emit(state.copyWith(playlistModels: playlistList));
    });

    on<AddSong>((event, emit) {
      final song = event.song;
      final MyPlaylistModel playlist = myDb.get(event.index);
      final updatedPlaylist = MyPlaylistModel(
          id: playlist.id,
          name: playlist.name,
          playlistSongs: playlist.playlistSongs..add(song));
      myDb.put(playlist.id, updatedPlaylist);
      final List updatedPlaylistModels = myDb.values.toList();

      emit(state.copyWith(playlistModels: updatedPlaylistModels));
    });

    on<DeleteSong>((event, emit) {
      final MyPlaylistModel playlist = myDb.get(event.playlistIndex);
      final updatedPlaylist = MyPlaylistModel(
          id: playlist.id,
          name: playlist.name,
          playlistSongs: playlist.playlistSongs..removeAt(event.songIndex));
      myDb.put(event.playlistIndex, updatedPlaylist);

      final List updatedPlaylistModels = myDb.values.toList();

      emit(state.copyWith(playlistModels: updatedPlaylistModels));
    });
  }
}
