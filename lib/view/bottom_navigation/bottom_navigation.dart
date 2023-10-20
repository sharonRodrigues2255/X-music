import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/utils/constants/colors.dart';
import 'package:musicplayer_project/view/all_songs/all_songs.dart';
import 'package:musicplayer_project/view/all_songs/widgets/mini_player.dart';
import 'package:musicplayer_project/view/home_page/home_page.dart';
import 'package:musicplayer_project/view/playlists/playlists.dart';

final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
final List _pages = [const HomePage(), const AllSongs(), const Playlists()];

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: ((context, value, child) {
          return Scaffold(
            body: _pages[selectedIndex.value],
            bottomNavigationBar: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BlocBuilder<PlayerBloc, PlayerState>(
                    buildWhen: (previous, current) =>
                        previous.index != current.index,
                    builder: (context, state) {
                      return state.miniOn == true
                          ? SingleChildScrollView(
                              child: MIniPlayer(mysongs: state.songs))
                          : SizedBox();
                    },
                  ),
                  Container(
                    height: 55,
                    width: double.infinity,
                    child: Center(
                      child: BottomNavigationBar(
                          onTap: (value) {
                            selectedIndex.value = value;
                          },
                          currentIndex: selectedIndex.value,
                          backgroundColor: kblack,
                          selectedIconTheme: IconThemeData(size: 22),
                          unselectedIconTheme: IconThemeData(size: 18),
                          items: [
                            BottomNavigationBarItem(
                                icon: Icon(
                                  Icons.home,
                                ),
                                label: "Home"),
                            BottomNavigationBarItem(
                                icon: Icon(
                                  Icons.explore,
                                ),
                                label: "All Songs"),
                            BottomNavigationBarItem(
                                icon: Icon(
                                  Icons.playlist_play_rounded,
                                ),
                                label: "PlayLists")
                          ]),
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
