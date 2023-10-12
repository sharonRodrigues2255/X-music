part of 'homepage_bloc.dart';

@freezed
class HomepageEvent with _$HomepageEvent {
  const factory HomepageEvent.navigateEvent({required MySongModel song}) =
      NavigateEvent;
}
