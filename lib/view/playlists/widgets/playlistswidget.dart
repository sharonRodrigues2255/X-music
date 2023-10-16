import 'package:flutter/material.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/playlists/screens/create_playlist.dart';

class PlsylistBuilderWidget extends StatelessWidget {
  const PlsylistBuilderWidget({super.key, required this.value});

  final value;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: playlists.value.length,
        itemBuilder: (context, index) {
          print(playlists.value);
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: kred..shade900,
                radius: 30,
                child: Text(
                  value[index].name[0].toUpperCase(),
                  style: myfontBold(),
                ),
              ),
              title: Text(
                value[index].name,
                style: myfontBold(),
              ),
              subtitle:
                  Text(value[index].playlistSongs.length.toString() + " Songs"),
            ),
          );
        });
  }
}
