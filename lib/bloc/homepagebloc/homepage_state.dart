part of 'homepage_bloc.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState({required List<SongModel> allSongs}) =
      _HomepageState;

  factory HomepageState.initial() => HomepageState(allSongs: allSongsList);
}
