import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/utils/images/images_constants.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/player_screen/screens/add_song_to_playlist_screen.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:share_plus/share_plus.dart';

class AllSongs extends StatelessWidget {
  const AllSongs({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image:
                    DecorationImage(image: AssetImage(ImagesConstants.logo))),
          ),
          backgroundColor: kblack,
          title: const Text("X-Music"),
        ),
        body: allSongsList.isNotEmpty
            ? ListView.builder(
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
                      trailing: InkWell(
                          onTap: () {
                            showSongMorevertbottomSheet(context, index, song);
                          },
                          child: const Icon(Icons.more_vert)),
                    ),
                  );
                },
              )
            : const Center(
                child: Text("No songs to play"),
              ));
  }

  showSongMorevertbottomSheet(BuildContext context, int i, MySongModel song) {
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
                      Navigator.of(ctx).pop();
                      Get.to(PlayerScreen(
                        mysongs: allSongsList,
                        title: "All songs",
                      ));
                      context.read<PlayerBloc>().add(PlayerEvent.playSong(
                          id: song.id,
                          index: i,
                          mysongs: allSongsList,
                          from: "All songs"));
                    },
                    child: Text(
                      "Play",
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
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddsongToPlaylist(song: song)));
                  },
                  child: Text(
                    "Add to Playlist",
                    style: myfontNormal(),
                  ),
                ),
                BlocBuilder<PlayerBloc, PlayerState>(
                  builder: (context, state) {
                    return TextButton(
                        onPressed: () {
                          if (state.songs[state.index].id != song.id) {
                            allSongsList.removeAt(i);
                            final file = File(song.data!);
                            file.delete();
                            file.deleteSync();
                            Fluttertoast.showToast(
                                msg: "Song is removed from playlist");

                            BlocProvider.of<PlayerBloc>(context).add(PlaySong(
                                index: 0,
                                mysongs: allSongsList,
                                id: song.id,
                                from: "All songs"));

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
                              "Delete",
                              style: myfontNormal(),
                            ),
                          ),
                        ));
                  },
                ),
              ],
            ),
          );
        });
  }
}
