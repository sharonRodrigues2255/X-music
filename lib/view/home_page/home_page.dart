import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/all_songs/all_songs_bloc.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/bottom_navigation/bottom_navigation.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final allsongsBloc = AllSongsBloc(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblack,
        title: Text(
          greeting().toString(),
          style: myfontBold(size: 28.0),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "All Songs",
              style: myfontBold(color: kred, size: 22.0),
            ),
          ),
          BlocBuilder<AllSongsBloc, AllSongsState>(
            bloc: allsongsBloc,
            builder: (context, state) {
              return InkWell(
                onTap: () => selectedIndex.value = 1,
                child: CarouselSlider(
                    items: List.generate(
                        state.mySongs.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                child: ListView(
                                  children: [
                                    Container(
                                      width: 300,
                                      height: 190,
                                      child: QueryArtworkWidget(
                                          id: state.mySongs[index].id,
                                          type: ArtworkType.AUDIO),
                                    ),
                                    kheight10,
                                    Text(
                                      state.mySongs[index].displayName,
                                      style: myfontBold(),
                                    )
                                  ],
                                ),
                              ),
                            )),
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        height: 250,
                        aspectRatio: 16 / 9,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlay: true,
                        autoPlayCurve: Curves.ease)),
              );
            },
          )
        ],
      ),
    );
  }
}

String greeting() {
  final time = DateTime.now().hour;
  if (time >= 23 || time <= 6) {
    return "Good Night!!";
  } else if (time >= 6 || time <= 12) {
    return "Good Morning!!";
  } else if (time >= 12 || time <= 17) {
    return "Good Afternoon!!";
  } else {
    return "Good Evening!!";
  }
}
