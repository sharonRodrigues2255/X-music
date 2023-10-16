import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlists_event.dart';
part 'playlists_state.dart';
part 'playlists_bloc.freezed.dart';

class PlaylistsBloc extends Bloc<PlaylistsEvent, PlaylistsState> {
  PlaylistsBloc() : super(_Initial()) {
    on<PlaylistsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
