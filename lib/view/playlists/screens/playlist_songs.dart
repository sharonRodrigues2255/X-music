import 'package:flutter/material.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlaylistSongsScreen extends StatelessWidget {
  const PlaylistSongsScreen({super.key, required this.playlist});

  final MyPlaylistModel playlist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: Card(
          elevation: 3,
          child: TextButton.icon(
              onPressed: () {
                showPLaylistBottomSheet(context, playlist.name);
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
  }
}

showPLaylistBottomSheet(BuildContext context, String name) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView(
          children: [
            kheight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add Songs to $name",
                  style: myfontBold(),
                ),
              ],
            ),
            kheight20,
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
                        nullArtworkWidget: CircleAvatar(
                          radius: 25,
                          child: Icon(
                            Icons.music_note,
                            size: 20,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.add),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      });
}
