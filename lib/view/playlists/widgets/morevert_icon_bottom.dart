import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/player_screen/screens/add_song_to_playlist_screen.dart';
import 'package:share_plus/share_plus.dart';

showPlaylistMorevertbottomSheet(BuildContext context, int i, int dbkey,
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

                          if (state.index > i) {
                            BlocProvider.of<PlayerBloc>(context).add(PlaySong(
                                index: state.index - 1,
                                mysongs: playlist.playlistSongs,
                                id: song.id,
                                from: playlist.name));
                          }
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
