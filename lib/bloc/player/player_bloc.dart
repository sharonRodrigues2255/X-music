import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerState.playsong()) {
    positionStream();
    on<PlaySong>((event, emit) async {
      print(event.index);
      emit(state.copyWith(index: event.index, playing: true, miniOn: true));

      playSong(state.songs[event.index].url);
    });

    on<PauseSong>((event, emit) async {
      emit(state.copyWith(playing: false));
      await player.pause();
    });

    on<ContinueSong>((event, emit) async {
      emit(state.copyWith(playing: true));
      await player.play();
    });

    on<OnSeek>((event, emit) async {
      await player.seek(Duration(seconds: event.seektime));
    });

    on<LoopAndShuffle>((event, emit) {
      emit(state.copyWith(loop: event.loop, shuffle: event.shuffle));
    });
  }

  playSong(String? url) async {
    await player.setUrl(url!);
    await player.play();
  }

  positionStream() {
    var position;
    try {
      Future.sync(() {
        player.positionStream.listen((event) {
          position = event.inMilliseconds + 100;
          emit(state.copyWith(position: position));
          if (state.position >= state.songs[state.index!].duration!.toInt()) {
            final randomIndex = Random().nextInt(state.songs.length);
            add(PlaySong(
              index: state.loop == true
                  ? state.index!
                  : state.index == state.songs.length - 1
                      ? 0
                      : state.shuffle == true
                          ? randomIndex
                          : state.index! + 1,
              mysongs: state.songs,
            ));
          }
        });
      });
    } catch (e) {
      print(e);
    }
  }
}
