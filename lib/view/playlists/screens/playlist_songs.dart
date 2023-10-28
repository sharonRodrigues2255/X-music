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
import 'package:musicplayer_project/view/bottom_navigation/widgets/mini_player.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/player_screen/screens/add_song_to_playlist_screen.dart';
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
                          id: song.id,
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
                  showPLaylistBottomSheet(
                      context, playlist.name, dbkey, playlist);
                },
                icon: const Icon(
                  Icons.add_chart,
                  color: kwhite,
                ),
                label: Text(
                  "Add Songs",
                  style: myfontNormal(color: kwhite),
                )),
          ),
          bottomNavigationBar: BlocBuilder<PlayerBloc, PlayerState>(
            buildWhen: (previous, current) =>
                previous.index != current.index ||
                previous.playing != current.playing ||
                previous.miniOn != current.miniOn,
            builder: (context, state) {
              return state.miniOn == true
                  ? SingleChildScrollView(
                      child: MIniPlayer(mysongs: state.songs))
                  : SizedBox();
            },
          ),
        );
      },
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
                //////////////////////////////////////////////////////// delete from playlist boookmark
                BlocBuilder<PlayerBloc, PlayerState>(
                  builder: (context, state) {
                    return TextButton(
                        onPressed: () {
                          if (state.songs[state.index].id != song.id) {
                            BlocProvider.of<PlaylistsBloc>(context).add(
                                PlaylistsEvent.deleteSong(
                                    songIndex: i, playlistIndex: dbkey));
                            Fluttertoast.showToast(
                                msg: "Song is removed from playlist");
                            print(state.index);

                            BlocProvider.of<PlayerBloc>(context).add(PlaySong(
                                index: state.index - 1,
                                mysongs: playlist.playlistSongs,
                                id: song.id,
                                from: playlist.name));
                            print(playlist.playlistSongs.length);

                            Navigator.of(ctx).pop();
                          } else {
                            Fluttertoast.showToast(
                                textColor: kwhite,
                                fontSize: 16.0,
                                gravity: ToastGravity.CENTER,
                                toastLength: Toast.LENGTH_LONG,
                                msg:
                                    "The Song is currently running \n change the running song to delete");
                            Navigator.of(context).pop();
                          }
                        },
                        child: SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "Remove From \"${playlist.name}\"",
                              style: myfontNormal(),
                            ),
                          ),
                        ));
                  },
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

showPLaylistBottomSheet(
    BuildContext ctx, String name, int dbkey, MyPlaylistModel playlistModel) {
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
                              List list = playlistModel.playlistSongs
                                  .map((e) => e.id)
                                  .toList();
                              if (!list.contains(song.id)) {
                                BlocProvider.of<PlaylistsBloc>(context).add(
                                    AddSong(
                                        song: song, index: playlistModel.id));
                                Navigator.of(context).pop();
                              } else {
                                Fluttertoast.showToast(
                                    msg:
                                        "Song already exists in ${playlistModel.name}");
                              }
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
