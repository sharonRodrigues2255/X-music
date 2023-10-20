part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.playSong(
      {required int index, required List<MySongModel> mysongs}) = PlaySong;
  factory PlayerEvent.pauseSong() = PauseSong;
  factory PlayerEvent.continueSong() = ContinueSong;
  factory PlayerEvent.onSeek(int seektime) = OnSeek;
  factory PlayerEvent.loopAndShuffle(
      {required bool loop, required bool shuffle}) = LoopAndShuffle;
  factory PlayerEvent.isFavorite({required bool isfavorite}) = Isfavorite;
}
