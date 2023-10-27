import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';

class PlayerActionRow extends StatelessWidget {
  const PlayerActionRow(
      {Key? key, required this.state, required this.songs, this.size = 50})
      : super(key: key);

  final PlayerState state;
  final List<MySongModel> songs;
  final double size;

  @override
  Widget build(BuildContext context) {
    final playerBloc = BlocProvider.of<PlayerBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        kwidth10,
        IconButton.filled(
          onPressed: () {
            playerBloc.add(PlaySong(
                index: state.index == 0 ? songs.length - 1 : state.index - 1,
                mysongs: songs,
                from: state.from,
                id: state.songs[state.index].id));
          },
          icon: Icon(Icons.skip_previous),
          iconSize: size,
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
              icon: state.playing == false || player.playing == false
                  ? Icon(Icons.play_circle)
                  : Icon(Icons.pause_circle),
              iconSize: size,
            );
          },
        ),
        IconButton.filled(
          onPressed: () {
            playerBloc.add(PlaySong(
                index: state.index < songs.length - 1 ? state.index + 1 : 0,
                mysongs: songs,
                id: songs[state.index].id,
                from: state.from));
          },
          icon: Icon(Icons.skip_next),
          iconSize: size,
        ),
        kwidth10
      ],
    );
  }
}
