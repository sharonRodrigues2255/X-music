import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:musicplayer_project/bloc/your_top_ten/your_top_ten_bloc.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  var myFavSongs = Hive.box("Favorites");
  var yourtoptenbloc = YourTopTenBloc();
  PlayerBloc() : super(PlayerState.playsong()) {
    positionStream();

    on<PlaySong>((event, emit) async {
      final index = event.index;
      final songs = event.mysongs;
      if (state.songs[state.index].id != event.mysongs[event.index!].id ||
          state.playing == null) {
        emit(state.copyWith(
            index: index!,
            playing: true,
            miniOn: true,
            songs: songs,
            from: event.from,
            id: event.id,
            favorite: myFavSongs.containsKey(songs[index].id)));
        playSong(event.mysongs[state.index.toInt()]);
        yourtoptenbloc.mostlyAndRecentlyPlayed(event.mysongs[state.index]);
      } else {
        print("called");
        emit(state.copyWith(
            index: index!,
            songs: songs,
            id: event.id,
            favorite: myFavSongs.containsKey(
              songs[index].id,
            ),
            from: event.from));
      }
    });

    on<PauseSong>((event, emit) async {
      emit(state.copyWith(playing: false));
      await player.pause();
    });

    on<ContinueSong>((event, emit) async {
      emit(state.copyWith(playing: true, miniOn: true));
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

    on<StopAll>((event, emit) {
      player.stop();
      emit(
          state.copyWith(miniOn: false, shuffle: false, from: "", loop: false));
    });
  }

  playSong(MySongModel song) async {
    await player.setAudioSource(AudioSource.uri(Uri.parse(song.url!),
        tag: MediaItem(
          id: song.id.toString(),
          title: song.title,
          artist: song.artist,
          duration: Duration(seconds: song.duration!),
        )));

    player.play();
  }

  positionStream() async {
    var position;
    try {
      Future.sync(() {
        player.positionStream.listen((event) async {
          position = event.inMilliseconds + 100;

          emit(state.copyWith(position: position));
          if (state.position >= state.songs[state.index].duration!.toInt()) {
            final randomIndex = Random().nextInt(state.songs.length);
            emit(state.copyWith(randomGenerated: true));
            if (state.loop) {
              add(PlaySong(
                  index: state.index,
                  mysongs: state.songs,
                  from: state.from,
                  id: state.songs[state.index].id));
            } else if (state.shuffle && state.randomGenerated) {
              add(PlaySong(
                  index: randomIndex,
                  mysongs: state.songs,
                  from: state.from,
                  id: state.songs[state.index].id));
              emit(state.copyWith(randomGenerated: false));
            } else {
              add(PlaySong(
                  index: state.index < state.songs.length - 1
                      ? state.index + 1
                      : 0,
                  mysongs: state.songs,
                  id: state.songs[state.index].id,
                  from: state.from));
            }
          }
        });
      });
    } catch (e) {
      print(e);
    }
  }
}
