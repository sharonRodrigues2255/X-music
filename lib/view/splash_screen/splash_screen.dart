import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/utils/images/images_constants.dart';
import 'package:musicplayer_project/view/bottom_navigation/bottom_navigation.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    checkPermission(context);

    return Scaffold(
        backgroundColor: kblack,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(ImagesConstants.logo),
              ),
              kheight20,
              Text(
                "X-Music",
                style: myfontBold(size: 30.0),
              )
            ],
          ),
        ));
  }

  checkPermission(BuildContext context) async {
    final status = await Permission.storage.status;

    if (status.isDenied) {
      await Permission.storage.request();
      checkPermission(context);
    } else if (status.isGranted) {}
    final List<SongModel> externalSongs = await audioQuery.querySongs(
        sortType: SongSortType.DATE_ADDED,
        orderType: OrderType.ASC_OR_SMALLER,
        uriType: UriType.EXTERNAL,
        ignoreCase: true);

    final songs = externalSongs.map((e) => MySongModel(
        id: e.id,
        title: e.title,
        displayName: e.displayNameWOExt,
        artist: e.artist!,
        duration: e.duration,
        data: e.data,
        url: e.uri));

    allSongsList.addAll(songs);
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const BottomNavigationScreen()));
    });
  }
}

final OnAudioQuery audioQuery = OnAudioQuery();
List<MySongModel> allSongsList = [];
final player = AudioPlayer();
