import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/all_songs/all_songs_bloc.dart';
import 'package:musicplayer_project/utils/constants/sizes.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/bottom_navigation/bottom_navigation.dart';
import 'package:on_audio_query/on_audio_query.dart';

class CarousalSliderWidget extends StatelessWidget {
  const CarousalSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final allsongsBloc = AllSongsBloc(context);
    return BlocBuilder<AllSongsBloc, AllSongsState>(
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
                                  type: ArtworkType.AUDIO,
                                  nullArtworkWidget: Icon(
                                    Icons.music_note,
                                    size: 70,
                                  ),
                                ),
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
    );
  }
}
