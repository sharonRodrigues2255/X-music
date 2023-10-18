import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/view/playlists/screens/create_playlist.dart';

part 'playlists_event.dart';
part 'playlists_state.dart';
part 'playlists_bloc.freezed.dart';

class PlaylistsBloc extends Bloc<PlaylistsEvent, PlaylistsState> {
  PlaylistsBloc() : super(PlaylistsState.Initial()) {
    on<AddPlaylist>((event, emit) {
      playlistmodels.add(event.playlist);
      emit(state.copyWith(playlistModels: List.from(playlistmodels)));
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
}
