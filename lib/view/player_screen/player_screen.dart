import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/view/player_screen/widgets/player_action_row.dart';
import 'package:musicplayer_project/view/player_screen/widgets/progress_bar_widget.dart';
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
          onPressed: () {
            Navigator.of(context).pop();
          },
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
                return Hero(
                  transitionOnUserGestures: true,
                  tag: "player",
                  child: Container(
                    width: mediaSize.width * .8,
                    height: mediaSize.width * .8,
                    child: QueryArtworkWidget(
                      id: mysongs[state.index!].id,
                      type: ArtworkType.AUDIO,
                    ),
                  ),
                );
              },
            ),
            BlocBuilder<PlayerBloc, PlayerState>(
              buildWhen: (previous, current) {
                return previous.index != current.index;
              },
              builder: (context, state) {
                return Hero(
                  tag: "name",
                  child: Text(
                    mysongs[state.index!].title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
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
                  return Hero(
                    tag: "progress",
                    child: ProgressBarWidget(
                        onmini: false,
                        playerBloc: playerBloc,
                        mysongs: mysongs),
                  );
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
