import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/playlists/screens/create_playlist.dart';

class AddsongToPlaylist extends StatelessWidget {
  const AddsongToPlaylist({super.key, required this.song});

  final MySongModel song;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: TextButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CreatePlaylist()));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 30,
                width: 100,
                color: kred,
                child: Center(
                  child: Text(
                    "Create New",
                    style: myfontNormal(color: kwhite),
                  ),
                )),
          )),
      appBar: AppBar(
        title: Text("Select the Playlist"),
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
                        List list = playlistmodel.playlistSongs
                            .map((e) => e.id)
                            .toList();
                        if (!list.contains(song.id)) {
                          BlocProvider.of<PlaylistsBloc>(context).add(
                              AddSong(song: song, index: playlistmodel.id));
                          Navigator.of(context).pop();
                        } else {
                          Fluttertoast.showToast(
                              msg:
                                  "Song already exists in ${playlistmodel.name}");
                        }
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
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
