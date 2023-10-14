import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';

class PlayerActionRow extends StatelessWidget {
  const PlayerActionRow({Key? key, required this.state, required this.songs})
      : super(key: key);

  final PlayerState state;
  final List<MySongModel> songs;

  @override
  Widget build(BuildContext context) {
    final playerBloc = BlocProvider.of<PlayerBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton.filled(
          onPressed: () {
            playerBloc.add(PlaySong(
                index: state.index! == 0 ? songs.length - 1 : state.index! - 1,
                mysongs: songs));
          },
          icon: Icon(Icons.skip_previous),
          iconSize: 50,
        ),
        BlocBuilder<PlayerBloc, PlayerState>(
          builder: (context, state) {
            return IconButton.filled(
              onPressed: () {
                if (state.playing == true) {
                  playerBloc.add(PauseSong());
                } else {
                  playerBloc.add(ContinueSong());
                }
              },
              icon: state.playing == false
                  ? Icon(Icons.play_circle)
                  : Icon(Icons.pause_circle),
              iconSize: 50,
            );
          },
        ),
        IconButton.filled(
          onPressed: () {
            print(songs.length);
            print(state.index);
            playerBloc.add(PlaySong(
                index: state.index! < songs.length - 1 ? state.index! + 1 : 0,
                mysongs: songs));
          },
          icon: Icon(Icons.skip_next),
          iconSize: 50,
        ),
      ],
    );
  }
}
