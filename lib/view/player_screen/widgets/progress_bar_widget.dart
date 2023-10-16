import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget(
      {super.key,
      required this.playerBloc,
      required this.mysongs,
      required this.onmini});

  final PlayerBloc playerBloc;
  final List<MySongModel> mysongs;
  final bool onmini;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        return ProgressBar(
            onSeek: (value) {
              return playerBloc.add(OnSeek(value.inSeconds));
            },
            progressBarColor: Colors.red,
            thumbRadius: onmini ? 3 : 7,
            barHeight: onmini ? 3 : 5,
            timeLabelLocation:
                onmini ? TimeLabelLocation.none : TimeLabelLocation.sides,
            thumbColor: Colors.red,
            progress: Duration(milliseconds: state.position),
            total: Duration(milliseconds: mysongs[state.index!].duration!));
      },
    );
  }
}
