import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key, required this.mysongs});
  final List<MySongModel> mysongs;

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.sizeOf(context);
    final playerBloc = BlocProvider.of<PlayerBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down_outlined)),
      ),
      body: Center(
        child: BlocBuilder<PlayerBloc, PlayerState>(
          bloc: playerBloc,
          builder: (context, state) {
            return Column(
              children: [
                Container(
                  child: QueryArtworkWidget(
                      id: mysongs[state.index!].id, type: ArtworkType.AUDIO),
                  width: mediaSize.width * .8,
                  height: mediaSize.width * .8,
                ),
                kheight20,
                kwidth20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton.filled(
                      onPressed: () {},
                      icon: Icon(Icons.skip_previous),
                      iconSize: 50,
                    ),
                    IconButton.filled(
                      onPressed: () {
                        if (state.playing == true) {
                          BlocProvider.of<PlayerBloc>(context).add(PauseSong());
                        } else {
                          BlocProvider.of<PlayerBloc>(context)
                              .add(ContinueSong());
                        }
                      },
                      icon: state.playing == false
                          ? Icon(Icons.play_circle)
                          : Icon(Icons.pause_circle),
                      iconSize: 50,
                    ),
                    IconButton.filled(
                      onPressed: () {},
                      icon: Icon(Icons.skip_next),
                      iconSize: 50,
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
