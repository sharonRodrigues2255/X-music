import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';
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
        child: BlocBuilder<PlayerBloc, PlayerState>(
          bloc: playerBloc,
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: mediaSize.width * .8,
                  height: mediaSize.width * .8,
                  child: QueryArtworkWidget(
                    id: mysongs[state.index!].id,
                    type: ArtworkType.AUDIO,
                  ),
                ),
                Text(
                  mysongs[state.index!].title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(mysongs[state.index!].artist),
                kheight20,
                PlayerActionRow(
                  state: state,
                  songs: mysongs,
                ),
                kheight10,
                kheight20
              ],
            );
          },
        ),
      ),
    );
  }
}
