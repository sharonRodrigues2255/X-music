import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/playlists/screens/create_playlist.dart';
import 'package:musicplayer_project/view/playlists/screens/playlist_songs.dart';

class PlaylistBuilderWidget extends StatelessWidget {
  const PlaylistBuilderWidget({super.key, required this.value});

  final value;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: value.length,
        itemBuilder: (context, index) {
          print(playlists.value);
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 2),
            child: Card(
              elevation: 4,
              child: ListTile(
                onTap: () => Get.to(
                    PlaylistSongsScreen(
                      playlist: value[index],
                    ),
                    transition: Transition.rightToLeftWithFade),
                tileColor: Colors.black54,
                leading: CircleAvatar(
                  backgroundColor: kblack,
                  radius: 25,
                  child: Text(
                    value[index].name[0].toUpperCase(),
                    style: myfontBold(),
                  ),
                ),
                title: Text(
                  value[index].name,
                  style: myfontBold(),
                ),
                subtitle: Text(
                    value[index].playlistSongs.length.toString() + " Songs"),
              ),
            ),
          );
        });
  }
}
