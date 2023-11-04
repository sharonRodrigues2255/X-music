import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/player_screen/screens/add_song_to_playlist_screen.dart';
import 'package:musicplayer_project/view/player_screen/widgets/player_action_row.dart';
import 'package:musicplayer_project/view/player_screen/widgets/progress_bar_widget.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key, required this.mysongs, required this.title})
      : super(key: key);

  final List<MySongModel> mysongs;
  final String title;

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.sizeOf(context);
    final playerBloc = BlocProvider.of<PlayerBloc>(context);

    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.primaryDelta! > 0) {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: BlocBuilder<PlayerBloc, PlayerState>(
            builder: (context, state) {
              return Text(
                "Playing From ${state.from}",
                style: myfontBold(color: kred),
              );
            },
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.keyboard_arrow_down_outlined),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
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
                        id: mysongs[state.index].id,
                        type: ArtworkType.AUDIO,
                        nullArtworkWidget: Hero(
                          tag: "player",
                          child: Icon(
                            Icons.music_note_sharp,
                            size: 60,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                kheight10,
                BlocBuilder<PlayerBloc, PlayerState>(
                  buildWhen: (previous, current) {
                    return previous.index != current.index;
                  },
                  builder: (context, state) {
                    return Hero(
                      tag: "name",
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          mysongs[state.index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                ),
                kheight10,
                BlocBuilder<PlayerBloc, PlayerState>(
                  buildWhen: (previous, current) {
                    return previous.index != current.index;
                  },
                  builder: (context, state) {
                    return Text(
                      mysongs[state.index].artist,
                      textAlign: TextAlign.center,
                    );
                  },
                ),
                kheight20,
                BlocBuilder<PlayerBloc, PlayerState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              BlocProvider.of<PlayerBloc>(context)
                                  .add(Isfavorite(song: mysongs[state.index]));
                            },
                            icon: state.favorite == true
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : state.favorite == false
                                    ? Icon(Icons.favorite_border)
                                    : Icon(Icons.favorite_border)),
                        IconButton(
                            onPressed: () {
                              playerBloc.add(LoopAndShuffle(
                                  loop: !state.loop,
                                  shuffle: state.loop == false
                                      ? false
                                      : state.shuffle));
                            },
                            icon: Icon(
                              Icons.loop_sharp,
                              color: state.loop ? kred : kwhite,
                            )),
                        IconButton(
                            onPressed: () {
                              playerBloc.add(LoopAndShuffle(
                                  loop: state.shuffle == false
                                      ? false
                                      : state.loop,
                                  shuffle: !state.shuffle));
                            },
                            icon: Icon(
                              Icons.shuffle,
                              color: state.shuffle ? kred : kwhite,
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AddsongToPlaylist(
                                        song: mysongs[state.index],
                                      )));
                            },
                            icon: Icon(Icons.playlist_add)),
                      ],
                    );
                  },
                ),
                kheight10,
                kheight10,
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
                kheight10,
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
        ),
      ),
    );
  }
}
