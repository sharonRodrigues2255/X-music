import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';
import 'package:on_audio_query/on_audio_query.dart';

showAddsongsbottom(
    BuildContext ctx, String name, int dbkey, MyPlaylistModel playlistModel) {
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
                              List list = playlistModel.playlistSongs
                                  .map((e) => e.id)
                                  .toList();
                              if (!list.contains(song.id)) {
                                BlocProvider.of<PlaylistsBloc>(context).add(
                                    AddSong(
                                        song: song, index: playlistModel.id));
                              } else {
                                Fluttertoast.showToast(
                                    msg:
                                        "Song already exists in ${playlistModel.name}");
                              }
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
