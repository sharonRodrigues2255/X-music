import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/bottom_navigation/widgets/mini_player.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/playlists/widgets/add_songs_bottom.dart';
import 'package:musicplayer_project/view/playlists/widgets/morevert_icon_bottom.dart';
import 'package:on_audio_query/on_audio_query.dart';

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
                          showPlaylistMorevertbottomSheet(
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
                  showAddsongsbottom(context, playlist.name, dbkey, playlist);
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
}
