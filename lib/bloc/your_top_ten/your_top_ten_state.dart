part of 'your_top_ten_bloc.dart';

@freezed
class YourTopTenState with _$YourTopTenState {
  const factory YourTopTenState({required List<MySongModel> songsLIst}) =
      _YourTopTenState;

  factory YourTopTenState.initial() => YourTopTenState(songsLIst: []);
}
