import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/view/playlists/screens/create_playlist.dart';

part 'playlists_event.dart';
part 'playlists_state.dart';
part 'playlists_bloc.freezed.dart';

class PlaylistsBloc extends Bloc<PlaylistsEvent, PlaylistsState> {
  PlaylistsBloc() : super(PlaylistsState.Initial()) {
    on<Started>((event, emit) {
      emit(state.copyWith(playlistModels: event.playlists));
    });

    on<AddPlaylist>((event, emit) {
      final List<MyPlaylistModel> updatedPlaylist =
          List.from(state.playlistModels)..add(event.playlist);
      emit(state.copyWith(playlistModels: updatedPlaylist));
    });
  }
}
