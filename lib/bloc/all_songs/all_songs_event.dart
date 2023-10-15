part of 'all_songs_bloc.dart';

@freezed
class AllSongsEvent with _$AllSongsEvent {
  const factory AllSongsEvent.navigateEvent({
    required List<MySongModel> songs,
  }) = NavigateEvent;
}
