import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/view/playlists/screens/create_playlist.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Play lists"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(CreatePlaylist(),
              opaque: false,
              curve: Curves.easeInOutCirc,
              transition: Transition.circularReveal);
        },
        backgroundColor: kred,
        child: Icon(Icons.playlist_add_sharp),
      ),
    );
  }
}

List<MyPlaylistModel> playlists = [];
