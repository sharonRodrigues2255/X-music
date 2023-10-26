import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';

part 'your_top_ten_event.dart';
part 'your_top_ten_state.dart';
part 'your_top_ten_bloc.freezed.dart';

class YourTopTenBloc extends Bloc<YourTopTenEvent, YourTopTenState> {
  var mostlyandRecentlyDb = Hive.box("MostlyAndRecently");
  YourTopTenBloc() : super(YourTopTenState.initial()) {
    on<Mostly>((event, emit) {
      List<MySongModel> mostlySongslist = mostlyandRecentlyDb.values
          .map((e) => MySongModel(
              id: e.id,
              title: e.title,
              data: e.data,
              displayName: e.displayName,
              artist: e.artist,
              duration: e.duration,
              playedTimes: e.playedTimes,
              url: e.url))
          .toList();
      emit(state.copyWith(songsLIst: mostlySongslist));
    });
    on<Recently>((event, emit) {
      List<MySongModel> recentlyPlayed = mostlyandRecentlyDb.values
          .map((e) => MySongModel(
              id: e.id,
              data: e.data,
              title: e.title,
              displayName: e.displayName,
              artist: e.artist,
              duration: e.duration,
              playedTime: e.playedTime,
              url: e.url))
          .toList();
      emit(state.copyWith(songsLIst: recentlyPlayed));
    });

    on<UpdateMostlyAndRecentlyPlayedList>((event, emit) {
      emit(state.copyWith(
          songsLIst: event.songslist
              .map((e) => MySongModel(
                  id: e.id,
                  title: e.title,
                  displayName: e.displayName,
                  playedTimes: e.playedTimes,
                  playedTime: e.playedTime,
                  artist: e.artist,
                  data: e.data,
                  duration: e.duration,
                  url: e.url))
              .toList()));
    });
  }
  mostlyAndRecentlyPlayed(MySongModel song) {
    song.playedTimes = song.playedTimes! + 1;
    var currentSong = MySongModel(
        id: song.id,
        title: song.title,
        displayName: song.displayName,
        playedTime: DateTime.now().millisecondsSinceEpoch,
        artist: song.artist,
        duration: song.duration,
        playedTimes: song.playedTimes,
        data: song.data,
        url: song.url);
    mostlyandRecentlyDb.put(song.id, currentSong);
    var songList = mostlyandRecentlyDb.values.toList();
    add(UpdateMostlyAndRecentlyPlayedList(songslist: songList));
  }
}
