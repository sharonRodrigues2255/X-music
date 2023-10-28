import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/player_screen/screens/add_song_to_playlist_screen.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:share_plus/share_plus.dart';

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
                        data: e.data),
                  )
                  .toList();
          final song = favSongs.elementAt(index);
          return Card(
            child: ListTile(
              tileColor: Colors.black54,
              style: ListTileStyle.list,
              onTap: () {
                Get.to(PlayerScreen(
                  mysongs: favSongs,
                  title: "Favorites",
                ));
                context.read<PlayerBloc>().add(PlayerEvent.playSong(
                    index: index,
                    mysongs: favSongs,
                    from: "Favorites",
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

  showSongMorevertbottomSheet(BuildContext context, int i, int dbkey,
      MySongModel song, MyPlaylistModel playlist) {
    showModalBottomSheet(
        context: (context),
        builder: (ctx) {
          return Container(
            color: kblack.withOpacity(.6),
            height: MediaQuery.of(context).size.height / 3.3,
            child: Column(
              children: [
                Container(
                  height: 5,
                  width: 80,
                  color: Colors.white,
                ),
                TextButton(
                    onPressed: () {
                      Share.shareXFiles([XFile(song.data!)],
                          subject: song.title, text: song.title);
                      Navigator.of(ctx).pop();
                    },
                    child: Text(
                      "Share",
                      style: myfontNormal(),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                      Get.to(PlayerScreen(
                        mysongs: playlist.playlistSongs,
                        title: playlist.name,
                      ));
                      context.read<PlayerBloc>().add(PlayerEvent.playSong(
                          id: song.id,
                          index: i,
                          mysongs: playlist.playlistSongs,
                          from: playlist.name));
                    },
                    child: Text(
                      "Play",
                      style: myfontNormal(),
                    )),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddsongToPlaylist(song: song)));
                  },
                  child: Text(
                    "Add to Playlist",
                    style: myfontNormal(),
                  ),
                )
              ],
            ),
          );
        });
  }
}
