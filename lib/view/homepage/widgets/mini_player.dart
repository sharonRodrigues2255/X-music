import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
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
      buildWhen: (previous, current) => current.index != previous.index,
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
                      return Hero(
                        tag: "progress",
                        child: ProgressBarWidget(
                            onmini: true,
                            playerBloc: playerBloc,
                            mysongs: mysongs),
                      );
                    },
                  ),
                  kheight10,
                  Row(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                PlayerScreen(mysongs: mysongs)));
                      },
                      child: Row(
                        children: [
                          Hero(
                            tag: "player",
                            child: SizedBox(
                              child: QueryArtworkWidget(
                                  artworkBorder: BorderRadius.circular(5),
                                  artworkFit: BoxFit.cover,
                                  id: mysongs[state.index!].id,
                                  type: ArtworkType.AUDIO),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Hero(
                                tag: "name",
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      mysongs[state.index!].displayName,
                                      style: myfontBold(size: 14.0),
                                    ),
                                    Text(
                                      mysongs[state.index!].artist,
                                      style: myfontNormal(size: 12.0),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Hero(
                          tag: "action",
                          child: PlayerActionRow(
                            state: state,
                            songs: mysongs,
                            size: 35,
                          ),
                        ),
                        Icon(
                          Icons.close_outlined,
                          size: 20,
                        )
                      ],
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
