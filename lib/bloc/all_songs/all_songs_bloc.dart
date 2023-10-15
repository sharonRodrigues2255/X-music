import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';

part 'all_songs_event.dart';
part 'all_songs_state.dart';
part 'all_songs_bloc.freezed.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc(BuildContext context)
      : super(HomepageState.initial(
            mySongs: allSongsList
                .map((e) => MySongModel(
                    id: e.id,
                    title: e.title,
                    displayName: e.displayName,
                    duration: e.duration,
                    artist: e.artist!,
                    url: e.uri))
                .toList())) {
    on<NavigateEvent>((event, emit) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PlayerScreen(
                mysongs: event.songs,
              )));
    });
  }
}
