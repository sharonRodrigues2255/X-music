import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicplayer_project/model/playlist_model/my_playlist_model.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';

ValueNotifier<List<MyPlaylistModel>> playlists =
    ValueNotifier<List<MyPlaylistModel>>([]);

class CreatePlaylist extends StatelessWidget {
  const CreatePlaylist({super.key});

  @override
  Widget build(BuildContext context) {
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
                      playlists.value
                          .add(MyPlaylistModel(name: text, playlistSongs: []));
                      playlists.notifyListeners();
                      print(playlists);
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
