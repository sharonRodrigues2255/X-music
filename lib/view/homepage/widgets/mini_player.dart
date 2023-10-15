import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/view/player_screen/widgets/player_action_row.dart';
import 'package:musicplayer_project/view/player_screen/widgets/progress_bar_widget.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MIniPlayer extends StatelessWidget {
  const MIniPlayer({super.key, required this.mysongs});
  final List<MySongModel> mysongs;
  @override
  Widget build(BuildContext context) {
    final playerBloc = PlayerBloc();
    return BlocBuilder<PlayerBloc, PlayerState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        if (state.miniOn == true) {
          return Card(
            elevation: 10,
            child: Container(
              color: kblack,
              height: 80,
              width: double.infinity,
              child: Column(
                children: [
                  BlocBuilder<PlayerBloc, PlayerState>(
                    builder: (context, state) {
                      return ProgressBarWidget(
                          onmini: true,
                          playerBloc: playerBloc,
                          mysongs: mysongs);
                    },
                  ),
                  Row(children: [
                    BlocBuilder<PlayerBloc, PlayerState>(
                      buildWhen: (previous, current) =>
                          current.index != previous.index,
                      builder: (context, state) {
                        return SizedBox(
                          child: QueryArtworkWidget(
                              artworkBorder: BorderRadius.circular(5),
                              artworkFit: BoxFit.cover,
                              id: mysongs[state.index!].id,
                              type: ArtworkType.AUDIO),
                        );
                      },
                    ),
                    Spacer(),
                    BlocBuilder<PlayerBloc, PlayerState>(
                      builder: (context, state) {
                        return PlayerActionRow(
                          state: state,
                          songs: mysongs,
                          size: 35,
                        );
                      },
                    )
                  ]),
                ],
              ),
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
