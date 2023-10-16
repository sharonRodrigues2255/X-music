import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/all_songs/all_songs_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/view/all_songs/widgets/mini_player.dart';
import 'package:on_audio_query/on_audio_query.dart';

class AllSongs extends StatelessWidget {
  const AllSongs({Key? key});

  @override
  Widget build(BuildContext context) {
    final playerbloc = PlayerBloc();
    final allSongsbloc = AllSongsBloc(context);
    return BlocBuilder<AllSongsBloc, AllSongsState>(
      bloc: allSongsbloc,
      builder: (context, state) {
        return state.when(
          initial: (mySongs) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Xusic"),
                centerTitle: true,
              ),
              body: ListView.builder(
                itemCount: mySongs.length,
                itemBuilder: (context, index) {
                  final song = mySongs[index];
                  return Card(
                    child: ListTile(
                      tileColor: Colors.black45,
                      style: ListTileStyle.list,
                      onTap: () {
                        allSongsbloc.add(NavigateEvent(
                          songs: mySongs,
                        ));

                        context.read<PlayerBloc>().add(PlayerEvent.playSong(
                            index: index, mysongs: mySongs));
                      },
                      title: Text(song.displayName),
                      subtitle: Text(song.artist),
                      leading: QueryArtworkWidget(
                        id: song.id,
                        type: ArtworkType.AUDIO,
                        nullArtworkWidget: CircleAvatar(
                          radius: 25,
                          child: Icon(
                            Icons.music_note,
                            size: 20,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
