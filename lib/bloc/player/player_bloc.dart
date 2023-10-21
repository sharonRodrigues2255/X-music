import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  var myFavSongs = Hive.box("Favorites");
  PlayerBloc() : super(PlayerState.playsong()) {
    positionStream();

    on<PlaySong>((event, emit) async {
      final index = event.index;
      emit(state.copyWith(
          index: index,
          playing: true,
          miniOn: true,
          songs: event.mysongs,
          favorite: myFavSongs.containsKey(event.mysongs[index!].id)));
      if (state.index != null) {
        playSong(event.mysongs[state.index!].url);
      }
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

    on<Isfavorite>((event, emit) {
      if (event.song.favorite == false || event.song.favorite == null) {
        myFavSongs.put(event.song.id, event.song);
        event.song.favorite = true;
      } else {
        myFavSongs.delete(event.song.id);
        event.song.favorite = false;
      }
      emit(state.copyWith(favorite: myFavSongs.containsKey(event.song.id)));
    });
  }

  playSong(String? url) async {
    await player.setUrl(url!);
    player.play();
  }

  positionStream() async {
    var position;
    try {
      Future.sync(() {
        player.positionStream.listen((event) async {
          position = event.inMilliseconds + 100;

          emit(state.copyWith(position: position));
          if (state.position >=
              state.songs[state.index ?? 0].duration!.toInt()) {
            final randomIndex = Random().nextInt(state.songs.length);
            emit(state.copyWith(randomGenerated: true));
            if (state.loop) {
              add(await PlaySong(index: state.index!, mysongs: state.songs));
            } else if (state.shuffle && state.randomGenerated) {
              add(PlaySong(index: randomIndex, mysongs: state.songs));
              emit(state.copyWith(randomGenerated: false));
            } else {
              add(PlaySong(index: state.index! + 1, mysongs: state.songs));
            }
          }
        });
      });
    } catch (e) {
      print(e);
    }
  }
}
