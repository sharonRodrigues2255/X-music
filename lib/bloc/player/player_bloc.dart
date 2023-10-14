import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerState.playsong()) {
    on<PlaySong>((event, emit) {
      print(event.index);
      emit(state.copyWith(index: event.index));

      playSong(event.mysongs[event.index].url);
      positionStream();
    });

    on<PauseSong>((event, emit) async {
      emit(state.copyWith(playing: false));
      await player.pause();
    });

    on<ContinueSong>((event, emit) async {
      emit(state.copyWith(playing: true));
      await player.play();
    });

    on<OnSeek>((event, emit) {
      player.seek(Duration(seconds: event.seektime));
    });
  }

  playSong(String? url) async {
    await player.setUrl(url!);
    await player.play();
  }

  positionStream() async {
    var position;
    player.positionStream.listen((event) {
      position = event.inSeconds;
      emit(state.copyWith(position: position));
    });
  }
}
