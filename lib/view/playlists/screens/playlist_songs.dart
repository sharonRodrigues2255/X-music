import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:share_plus/share_plus.dart';

class PlaylistSongsScreen extends StatelessWidget {
  const PlaylistSongsScreen(
      {super.key, required this.playlistindex, required this.dbkey});
  final int playlistindex;
  final int dbkey;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PlaylistsBloc>(context).add(Started());
    return BlocBuilder<PlaylistsBloc, PlaylistsState>(
      builder: (context, state) {
        final playlist = state.playlistModels.elementAt(playlistindex);
        return Scaffold(
            appBar: AppBar(
              title: Text(
                playlist.name,
                style: myfontBold(),
              ),
            ),
            body: ListView.builder(
              itemCount: playlist.playlistSongs.length,
              itemBuilder: (context, i) {
                final song = playlist.playlistSongs[i];
                return Card(
                  child: ListTile(
                      tileColor: Colors.black45,
                      style: ListTileStyle.list,
                      onTap: () {
                        print(playlist.playlistSongs);
                        Get.to(PlayerScreen(
                          mysongs: playlist.playlistSongs,
                          title: playlist.name,
                        ));
                        context.read<PlayerBloc>().add(PlayerEvent.playSong(
                            index: i,
                            mysongs: playlist.playlistSongs,
                            from: playlist.name));
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
                      trailing: IconButton(
                          onPressed: () {
                            showSongMorevertbottomSheet(
                                context, i, dbkey, song, playlist);
                          },
                          icon: Icon(Icons.more_vert))),
                );
              },
            ),
            floatingActionButton: Card(
              elevation: 3,
              child: TextButton.icon(
                  onPressed: () {
                    showPLaylistBottomSheet(context, playlist.name, dbkey);
                  },
                  icon: const Icon(
                    Icons.add_chart,
                    color: kwhite,
                  ),
                  label: Text(
                    "Add Songs",
                    style: myfontNormal(color: kwhite),
                  )),
            ));
      },
    );
  }
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
                    BlocProvider.of<PlaylistsBloc>(context).add(
                        PlaylistsEvent.deleteSong(
                            songIndex: i, playlistIndex: dbkey));
                    Navigator.of(ctx).pop();
                  },
                  child: Text(
                    "Delete",
                    style: myfontNormal(),
                  )),
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
                        index: i,
                        mysongs: playlist.playlistSongs,
                        from: playlist.name));
                  },
                  child: Text(
                    "Play",
                    style: myfontNormal(),
                  )),
              TextButton(
                onPressed: () {},
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

showPLaylistBottomSheet(
  BuildContext ctx,
  String name,
  int dbkey,
) {
  showModalBottomSheet(
      context: ctx,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  name,
                  style: myfontBold(),
                ),
              ),
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: allSongsList.length,
                  itemBuilder: (context, index) {
                    final song = allSongsList[index];
                    return Card(
                      child: ListTile(
                        tileColor: Colors.black45,
                        style: ListTileStyle.list,
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
                        trailing: InkWell(
                            onTap: () {
                              BlocProvider.of<PlaylistsBloc>(ctx)
                                  .add(AddSong(song: song, index: dbkey));
                            },
                            child: const Icon(Icons.add)),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      });
}
