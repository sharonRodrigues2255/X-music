import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';
import 'package:on_audio_query/on_audio_query.dart';

class AllSongs extends StatelessWidget {
  const AllSongs({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xusic"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: allSongsList.length,
        itemBuilder: (context, index) {
          final song = allSongsList[index];
          return Card(
            child: ListTile(
              tileColor: Colors.black54,
              style: ListTileStyle.list,
              onTap: () {
                Get.to(PlayerScreen(
                  mysongs: allSongsList,
                  title: "All Songs",
                ));
                BlocProvider.of<PlayerBloc>(context).add(PlaySong(
                    index: index,
                    mysongs: allSongsList,
                    from: "All Songs",
                    id: song.id));
              },
              title: Text(song.displayName),
              subtitle: Text(song.artist),
              leading: QueryArtworkWidget(
                id: song.id,
                type: ArtworkType.AUDIO,
                nullArtworkWidget: const CircleAvatar(
                  radius: 25,
                  child: Icon(
                    Icons.music_note,
                    size: 20,
                  ),
                ),
              ),
              trailing: const Icon(Icons.more_vert),
            ),
          );
        },
      ),
    );
  }
}
