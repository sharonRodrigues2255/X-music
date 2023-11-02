import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SearchScreen extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<MySongModel> searchsonglist = query == ""
        ? allSongsList
        : allSongsList
            .where((element) =>
                element.title.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: searchsonglist.length,
      itemBuilder: (context, index) {
        final song = searchsonglist[index];
        return Card(
          child: ListTile(
            tileColor: Colors.black54,
            style: ListTileStyle.list,
            onTap: () {
              Get.to(PlayerScreen(
                mysongs: searchsonglist,
                title: "Search",
              ));
              context.read<PlayerBloc>().add(PlayerEvent.playSong(
                  index: index, mysongs: [song], from: 'Search', id: song.id));
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
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<MySongModel> searchsonglist = query == ""
        ? allSongsList
        : allSongsList
            .where((element) => element.title
                .trim()
                .toLowerCase()
                .contains(query.trim().toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: searchsonglist.length,
      itemBuilder: (context, index) {
        final song = searchsonglist[index];
        return Card(
          child: ListTile(
            tileColor: Colors.black54,
            style: ListTileStyle.list,
            onTap: () {
              Get.to(PlayerScreen(
                mysongs: [song],
                title: "Search",
              ));
              context.read<PlayerBloc>().add(PlayerEvent.playSong(
                  index: index,
                  mysongs: searchsonglist,
                  from: "Search",
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
          ),
        );
      },
    );
  }
}
