import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/view/player_screen/widgets/player_action_row.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key, required this.mysongs}) : super(key: key);

  final List<MySongModel> mysongs;

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.sizeOf(context);
    final playerBloc = BlocProvider.of<PlayerBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_arrow_down_outlined),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BlocBuilder<PlayerBloc, PlayerState>(
              buildWhen: (previous, current) {
                return previous.index != current.index;
              },
              builder: (context, state) {
                return Container(
                  width: mediaSize.width * .8,
                  height: mediaSize.width * .8,
                  child: QueryArtworkWidget(
                    id: mysongs[state.index!].id,
                    type: ArtworkType.AUDIO,
                  ),
                );
              },
            ),
            BlocBuilder<PlayerBloc, PlayerState>(
              buildWhen: (previous, current) {
                return previous.index != current.index;
              },
              builder: (context, state) {
                return Text(
                  mysongs[state.index!].title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                );
              },
            ),
            BlocBuilder<PlayerBloc, PlayerState>(
              buildWhen: (previous, current) {
                return previous.index != current.index;
              },
              builder: (context, state) {
                return Text(mysongs[state.index!].artist);
              },
            ),
            BlocBuilder<PlayerBloc, PlayerState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_border)),
                    IconButton(
                        onPressed: () {
                          playerBloc.add(LoopAndShuffle(
                              loop: !state.loop,
                              shuffle:
                                  state.loop == false ? false : state.shuffle));
                        },
                        icon: Icon(
                          Icons.loop_sharp,
                          color: state.loop ? kred : kwhite,
                        )),
                    IconButton(
                        onPressed: () {
                          playerBloc.add(LoopAndShuffle(
                              loop: state.shuffle == false ? false : state.loop,
                              shuffle: !state.shuffle));
                        },
                        icon: Icon(
                          Icons.shuffle,
                          color: state.shuffle ? kred : kwhite,
                        )),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.playlist_add)),
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BlocBuilder<PlayerBloc, PlayerState>(
                builder: (context, state) {
                  if (state.position >=
                      mysongs[state.index!].duration!.toInt()) {
                    playerBloc.add(PlaySong(
                      index: state.loop == true
                          ? state.index!
                          : state.index == mysongs.length - 1
                              ? 0
                              : state.index! + 1,
                      mysongs: mysongs,
                    ));
                  }
                  return ProgressBar(
                      onSeek: (value) {
                        return playerBloc.add(OnSeek(value.inSeconds));
                      },
                      progressBarColor: Colors.red,
                      thumbColor: Colors.red,
                      progress: Duration(milliseconds: state.position),
                      total: Duration(
                          milliseconds: mysongs[state.index!].duration!));
                },
              ),
            ),
            BlocBuilder<PlayerBloc, PlayerState>(
              builder: (context, state) {
                return PlayerActionRow(
                  state: state,
                  songs: mysongs,
                );
              },
            ),
            kheight20,
            kwidth10
          ],
        ),
      ),
    );
  }
}
