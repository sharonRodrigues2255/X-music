import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/utils/images/images_constants.dart';
import 'package:musicplayer_project/view/favorites/favorites.dart';
import 'package:musicplayer_project/view/home_page/widgets/button_square_button.dart';
import 'package:musicplayer_project/view/home_page/widgets/carousal_slider_widget.dart';
import 'package:musicplayer_project/view/home_page/widgets/search_songs.dart';
import 'package:musicplayer_project/view/home_page/widgets/subtitile_widget.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:musicplayer_project/view/search/search.dart';
import 'package:musicplayer_project/view/settings/settings.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';
import 'package:musicplayer_project/view/your_top_10/your_top_ten_screen.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int? randomIndex;
    if (allSongsList.isNotEmpty) {
      randomIndex = Random().nextInt(allSongsList.length);
    } else {
      randomIndex = null;
    }
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(ImagesConstants.logo))),
        ),
        backgroundColor: kblack,
        title: Text(
          greeting().toString(),
          style: myfontBold(size: 28.0),
        ),
        actions: [
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SettingsScreen()));
              },
              child: const Icon(Icons.settings)),
          kwidth10
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 14),
              child: InkWell(
                onTap: () {
                  showSearch(context: context, delegate: SearchScreen());
                },
                child: SearchForSongsWidget(),
              ),
            ),
            SubtitleWidget(
              title: "All Songs",
            ),
            if (allSongsList.isNotEmpty)
              const CarousalSliderWidget()
            else
              Center(
                child: Text("No songs to show yet"),
              ),
            kheight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Favorites()));
                  },
                  child: const ButtonSquareCard(
                    title: 'Favourites',
                    image: AssetImage(ImagesConstants.favorites),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => YourTopTen()));
                  },
                  child: const ButtonSquareCard(
                    title: "Your top 10",
                    image: AssetImage(ImagesConstants.top10),
                  ),
                ),
              ],
            ),
            kheight10,
            SubtitleWidget(title: "Suggeted for you"),
            Row(children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PlayerScreen(
                              mysongs: allSongsList,
                              title: "Home",
                            )));
                    BlocProvider.of<PlayerBloc>(context).add(PlaySong(
                        index: randomIndex,
                        mysongs: allSongsList,
                        id: allSongsList[randomIndex!].id,
                        from: "Home"));
                  },
                  child: randomIndex != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            kwidth20,
                            SizedBox(
                              child: QueryArtworkWidget(
                                artworkBorder: BorderRadius.circular(5),
                                artworkFit: BoxFit.cover,
                                id: allSongsList[randomIndex].id,
                                type: ArtworkType.AUDIO,
                                nullArtworkWidget: CircleAvatar(
                                  radius: 14,
                                  child: Icon(
                                    Icons.music_note,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                            kwidth20,
                            kwidth10,
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width / 2,
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        allSongsList[randomIndex].displayName,
                                        style: myfontBold(size: 14.0),
                                      ),
                                      Text(
                                        allSongsList[randomIndex].artist,
                                        style: myfontNormal(size: 12.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : SizedBox()),
            ]),
            kheight20
          ],
        ),
      ),
    );
  }
}

String greeting() {
  final time = DateTime.now().hour;
  if (time >= 23 && time <= 5) {
    return "Good Night!!";
  } else if (time >= 6 && time <= 11) {
    return "Good Morning!!";
  } else if (time >= 12 && time <= 16) {
    return "Good Afternoon!!";
  } else if (time >= 17 && time <= 22) {
    return "Good Evening!!";
  } else {
    return "Good night!!";
  }
}
