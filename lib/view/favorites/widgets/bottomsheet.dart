import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/player_screen/screens/add_song_to_playlist_screen.dart';
import 'package:share_plus/share_plus.dart';

showSongMorevertbottomSheet(
    BuildContext context, int i, MySongModel song, List<MySongModel> playlist) {
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
                      mysongs: playlist,
                      title: "Favorites",
                    ));
                    context.read<PlayerBloc>().add(PlayerEvent.playSong(
                          id: song.id,
                          index: i,
                          mysongs: playlist,
                          from: "Favorites",
                        ));
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
