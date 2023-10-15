part of 'all_songs_bloc.dart';

@freezed
class AllSongsState with _$AllSongsState {
  factory AllSongsState.initial({required List<MySongModel> mySongs}) = Initial;
}
