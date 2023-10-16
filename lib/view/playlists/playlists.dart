import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/view/playlists/screens/create_playlist.dart';
import 'package:musicplayer_project/view/playlists/widgets/playlistswidget.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Play lists"),
      ),
      body: ValueListenableBuilder(
          valueListenable: playlists,
          builder: (context, value, _) {
            return PlaylistBuilderWidget(
              value: value,
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const CreatePlaylist(),
              opaque: false,
              curve: Curves.easeInOutCirc,
              transition: Transition.circularReveal);
        },
        backgroundColor: kred,
        child: const Icon(Icons.playlist_add_sharp),
      ),
    );
  }
}
