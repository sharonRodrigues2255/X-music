import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:on_audio_query/on_audio_query.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: ListView.builder(
        itemCount:
            BlocProvider.of<PlayerBloc>(context).myFavSongs.values.length,
        itemBuilder: (context, index) {
          final List<MySongModel> favSongs =
              BlocProvider.of<PlayerBloc>(context)
                  .myFavSongs
                  .values
                  .map(
                    (e) => MySongModel(
                      id: e.id,
                      title: e.title,
                      displayName: e.displayName,
                      artist: e.artist,
                      duration: e.duration,
                      url: e.url,
                    ),
                  )
                  .toList();
          final song = favSongs.elementAt(index);
          return Card(
            child: ListTile(
              tileColor: Colors.black54,
              style: ListTileStyle.list,
              onTap: () {
                Get.to(PlayerScreen(mysongs: favSongs));
                context
                    .read<PlayerBloc>()
                    .add(PlayerEvent.playSong(index: index, mysongs: favSongs));
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
