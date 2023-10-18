import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicplayer_project/bloc/playlists/playlists_bloc.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';

class CreatePlaylist extends StatelessWidget {
  const CreatePlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    final playlistsbloc = BlocProvider.of<PlaylistsBloc>(context);
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.75),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Create playlist",
              style: myfontNormal(color: kblue),
            ),
            kheight20,
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * .15),
              child: TextFormField(
                autofocus: true,
                controller: textEditingController,
              ),
            ),
            kheight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      "Back",
                      style: myfontNormal(color: kred),
                    )),
                TextButton(
                    onPressed: () {
                      final text = textEditingController.text;
                      final id = DateTime.now().millisecond.toInt();
                      playlistsbloc.add(AddPlaylist(
                          playlist: MyPlaylistModel(
                              name: text, playlistSongs: [], id: id)));

                      Get.back();
                    },
                    child: Text(
                      "Create",
                      style: myfontNormal(color: kyellow),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

List<MyPlaylistModel> playlistmodels = [];
