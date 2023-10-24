part of 'your_top_ten_bloc.dart';

@freezed
class YourTopTenEvent with _$YourTopTenEvent {
  const factory YourTopTenEvent.started() = _Started;
  factory YourTopTenEvent.mostly() = Mostly;
  factory YourTopTenEvent.updateMostlyAndRecentlyPlayedList(
      {required List songslist}) = UpdateMostlyAndRecentlyPlayedList;
}
