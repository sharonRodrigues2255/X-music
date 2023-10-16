import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';

part 'playlists_event.dart';
part 'playlists_state.dart';
part 'playlists_bloc.freezed.dart';

class PlaylistsBloc extends Bloc<PlaylistsEvent, PlaylistsState> {
  PlaylistsBloc() : super(PlaylistsState.initial()) {
    on<AddToPlaylist>((event, emit) {
      emit(state.copyWith(
          playlistsongs: List.from(state.playlistsongs.add(event.songModel))));
    });
  }
}
