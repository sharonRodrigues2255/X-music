import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';
part 'homepage_bloc.freezed.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc()
      : super(HomepageState.initial(
            mySongs: allSongsList
                .map((e) => MySongModel(
                    id: e.id,
                    title: e.title,
                    displayName: e.displayName,
                    artist: e.artist!,
                    url: e.uri))
                .toList())) {}
}
