import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerState.playsong()) {
    on<PlaySong>((event, emit) async {
      print(event.index);
      emit(state.copyWith(index: event.index, playing: true));

      playSong(event.mysongs[event.index].url);
      await positionStream(event.mysongs);
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

    on<LoopAndShuffle>((event, emit) {
      emit(state.copyWith(loop: event.loop, shuffle: event.shuffle));
    });
  }

  playSong(String? url) async {
    await player.setUrl(url!);
    await player.play();
  }

  positionStream(List<MySongModel> songs) async {
    var position;
    try {
      await Future.sync(() {
        player.positionStream.listen((event) {
          position = event.inMilliseconds + 100;
          emit(state.copyWith(position: position));

          if (position >= songs[state.index!].duration) {
            add(PlaySong(
              index: state.loop == true
                  ? state.index!
                  : songs.length % state.index!,
              mysongs: songs,
            ));
          }
        });
      });
    } catch (e) {
      print(e);
    }
  }
}
