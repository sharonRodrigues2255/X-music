import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicplayer_project/model/recently_played_model/recently_played.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';

part 'your_top_ten_event.dart';
part 'your_top_ten_state.dart';
part 'your_top_ten_bloc.freezed.dart';

class YourTopTenBloc extends Bloc<YourTopTenEvent, YourTopTenState> {
  var mostlyPlayedDB = Hive.box("MostPlayed");
  var recentlyPlayedDB = Hive.box("RecentlyPlayed");
  YourTopTenBloc() : super(YourTopTenState.initial()) {
    on<Mostly>((event, emit) {
      List<MySongModel> mostlySongslist = mostlyPlayedDB.values
          .map((e) => MySongModel(
              id: e.id,
              title: e.title,
              displayName: e.displayName,
              artist: e.artist,
              duration: e.duration,
              url: e.url))
          .toList();
      emit(state.copyWith(songsLIst: mostlySongslist));
    });

    on<UpdateMostlyPlayedList>((event, emit) {
      emit(state.copyWith(
          songsLIst: event.songslist
              .map((e) => MySongModel(
                  id: e.id,
                  title: e.title,
                  displayName: e.displayName,
                  playedTimes: e.playedTimes,
                  artist: e.artist,
                  duration: e.duration,
                  url: e.url))
              .toList()));
    });
  }
  mostlyPlayed(MySongModel song) {
    song.playedTimes = song.playedTimes! + 1;
    var currentSong = MySongModel(
        id: song.id,
        title: song.title,
        displayName: song.displayName,
        artist: song.artist,
        duration: song.duration,
        playedTimes: song.playedTimes,
        url: song.url);
    mostlyPlayedDB.put(song.id, currentSong);
    var songList = mostlyPlayedDB.values.toList();
    add(UpdateMostlyPlayedList(songslist: songList));
  }

  recentlyPlayed(RecentlyPlayed recentlyPlayed) {
    recentlyPlayedDB.put(recentlyPlayed.song.id, recentlyPlayed);
  }
}
