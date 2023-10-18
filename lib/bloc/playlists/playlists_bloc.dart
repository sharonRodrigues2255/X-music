import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/view/playlists/screens/create_playlist.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'playlists_event.dart';
part 'playlists_state.dart';
part 'playlists_bloc.freezed.dart';

class PlaylistsBloc extends Bloc<PlaylistsEvent, PlaylistsState> {
  var myDb = Hive.box("MySongBox");

  PlaylistsBloc() : super(PlaylistsState.initial()) {
    on<Started>((event, emit) {
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
      final MySongModel song = event.song;
      final List<MyPlaylistModel> updatedPlaylistModels =
          List.from(playlistmodels);
      updatedPlaylistModels[event.index].playlistSongs.add(song);
      emit(state.copyWith(playlistModels: updatedPlaylistModels, added: true));
      emit(state.copyWith(added: false));
    });
  }

  removefromDatabase(int index) {
    myDb.delete(index);
  }
}
