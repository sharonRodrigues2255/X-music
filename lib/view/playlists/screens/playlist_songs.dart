import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';
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
                      Get.to(PlayerScreen(mysongs: playlist.playlistSongs));
                      context.read<PlayerBloc>().add(PlayerEvent.playSong(
                          index: i, mysongs: playlist.playlistSongs));
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
                    trailing: Icon(Icons.more_vert),
                  ),
                );
              },
            ),
            floatingActionButton: Card(
              elevation: 3,
              child: TextButton.icon(
                  onPressed: () {
                    showPLaylistBottomSheet(context, playlist.name, dbkey);
                  },
                  icon: const Icon(
                    Icons.add_chart,
                    color: kwhite,
                  ),
                  label: Text(
                    "Add Songs",
                    style: myfontNormal(color: kwhite),
                  )),
            ));
      },
    );
  }
}

showPLaylistBottomSheet(
  BuildContext ctx,
  String name,
  int dbkey,
) {
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
                              BlocProvider.of<PlaylistsBloc>(ctx)
                                  .add(AddSong(song: song, index: dbkey));
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
