part of 'playlists_bloc.dart';

@freezed
class PlaylistsEvent with _$PlaylistsEvent {
  const factory PlaylistsEvent.started() = _Started;
}
