import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/playlists/screens/create_playlist.dart';

import 'screens/playlist_songs.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Play lists"),
      ),
      body: BlocBuilder<PlaylistsBloc, PlaylistsState>(
        builder: (context, state) {
          print("sld");
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
                            index: index,
                          ),
                        );
                      },
                      tileColor: Colors.black54,
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
}
