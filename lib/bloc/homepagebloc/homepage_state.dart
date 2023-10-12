part of 'homepage_bloc.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState() = _HomepageState;
  factory HomepageState.initial({required List<MySongModel> mySongs}) = Initial;
}
