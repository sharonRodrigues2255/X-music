import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/utils/images/images_constants.dart';
import 'package:musicplayer_project/view/playlists/screens/create_playlist.dart';

import 'screens/playlist_songs.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PlaylistsBloc>(context).add(Started());
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(ImagesConstants.logo))),
        ),
        title: const Text("Play lists"),
      ),
      body: BlocBuilder<PlaylistsBloc, PlaylistsState>(
        builder: (context, state) {
          return ListView.builder(
              itemCount: state.playlistModels.length,
              itemBuilder: (context, index) {
                final playlistmodel = state.playlistModels[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Card(
                    elevation: 4,
                    child: ListTile(
                      onTap: () {
                        Get.to(
                          PlaylistSongsScreen(
                            playlistindex: index,
                            dbkey: playlistmodel.id,
                          ),
                        );
                      },
                      tileColor: Colors.black54.withOpacity(.6),
                      leading: CircleAvatar(
                        backgroundColor: kblack,
                        radius: 25,
                        child: Text(
                          playlistmodel.name[0].toUpperCase(),
                          style: myfontBold(),
                        ),
                      ),
                      title: Text(
                        playlistmodel.name,
                        style: myfontBold(),
                      ),
                      subtitle: Text(
                          playlistmodel.playlistSongs.length.toString() +
                              " Songs"),
                      trailing: IconButton(
                          onPressed: () {
                            showbottomSheet(context, playlistmodel);
                          },
                          icon: Icon(
                            Icons.more_vert,
                            color: kred,
                          )),
                    ),
                  ),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(
            const CreatePlaylist(),
            opaque: false,
            curve: Curves.easeInOutCirc,
          );
        },
        backgroundColor: kred,
        child: const Icon(Icons.playlist_add_sharp),
      ),
    );
  }

  showbottomSheet(BuildContext context, MyPlaylistModel playlist) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height / 5,
            color: kblack,
            child: Column(
              children: [
                Container(
                  height: 3,
                  width: 70,
                  color: kwhite,
                ),
                kheight20,
                TextButton(
                    onPressed: () {
                      BlocProvider.of<PlayerBloc>(context).add(PlaySong(
                          index: 0,
                          id: null,
                          mysongs: playlist.playlistSongs,
                          from: playlist.name));
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Play and shuffle Playlist",
                      style: myfontNormal(),
                    )),
                BlocBuilder<PlayerBloc, PlayerState>(
                  builder: (context, state) {
                    return TextButton(
                        onPressed: () {
                          if (state.from != playlist.name) {
                            BlocProvider.of<PlaylistsBloc>(context)
                                .add(DeletePlaylist(index: playlist.id));
                          } else {
                            Fluttertoast.showToast(
                                msg:
                                    "Playlist is currently playing \n can't delete now");
                          }
                        },
                        child: Text(
                          "Delete Playlist",
                          style: myfontNormal(),
                        ));
                  },
                )
              ],
            ),
          );
        });
  }
}
