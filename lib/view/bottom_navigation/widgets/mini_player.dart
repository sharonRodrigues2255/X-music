import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
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
    final playerBloc = BlocProvider.of<PlayerBloc>(context);

    return BlocBuilder<PlayerBloc, PlayerState>(
      buildWhen: (previous, current) => current.index != previous.index,
      builder: (context, state) {
        if (state.miniOn == true) {
          return GestureDetector(
            onVerticalDragUpdate: (details) {
              if (details.primaryDelta! < 0) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PlayerScreen(
                          mysongs: state.songs,
                          title: "",
                        )));
              }
            },
            child: Card(
              elevation: 10,
              child: Container(
                color: kblack,
                height: 75,
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
                              builder: (context) => PlayerScreen(
                                    mysongs: state.songs,
                                    title: "",
                                  )));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              child: QueryArtworkWidget(
                                artworkBorder: BorderRadius.circular(5),
                                artworkFit: BoxFit.cover,
                                id: state.songs[state.index].id,
                                type: ArtworkType.AUDIO,
                                nullArtworkWidget: Hero(
                                  tag: "player",
                                  child: CircleAvatar(
                                    radius: 21,
                                    child: Icon(
                                      Icons.music_note,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Hero(
                              tag: "name",
                              child: Container(
                                width: MediaQuery.sizeOf(context).width / 3,
                                child: SingleChildScrollView(
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            state
                                                .songs[state.index].displayName,
                                            style: myfontBold(size: 14.0),
                                          ),
                                          Text(
                                            state.songs[state.index].artist,
                                            style: myfontNormal(size: 12.0),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Hero(
                            tag: "action",
                            child: PlayerActionRow(
                              state: state,
                              songs: state.songs,
                              size: 30,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              playerBloc.add(StopAll());
                            },
                            child: Icon(
                              Icons.close_rounded,
                              size: 17,
                            ),
                          )
                        ],
                      )
                    ]),
                  ],
                ),
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
