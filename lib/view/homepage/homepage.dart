import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/homepage/homepage_bloc.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/view/homepage/widgets/mini_player.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final playerbloc = PlayerBloc();
    final homepagebloc = HomepageBloc(context);
    return BlocBuilder<HomepageBloc, HomepageState>(
      bloc: homepagebloc,
      builder: (context, state) {
        return state.when(
          initial: (mySongs) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Xusic"),
                centerTitle: true,
              ),
              body: ListView.builder(
                itemCount: mySongs.length,
                itemBuilder: (context, index) {
                  final song = mySongs[index];
                  return Card(
                    child: ListTile(
                      tileColor: Colors.black45,
                      style: ListTileStyle.list,
                      onTap: () {
                        homepagebloc.add(NavigateEvent(
                          songs: mySongs,
                        ));

                        context.read<PlayerBloc>().add(PlayerEvent.playSong(
                            index: index, mysongs: mySongs));
                      },
                      title: Text(song.displayName),
                      subtitle: Text(song.artist),
                      leading: QueryArtworkWidget(
                          id: song.id, type: ArtworkType.AUDIO),
                      trailing: Icon(Icons.more_vert),
                    ),
                  );
                },
              ),
              bottomNavigationBar: BlocBuilder<PlayerBloc, PlayerState>(
                buildWhen: (previous, current) =>
                    previous.index != current.index!,
                builder: (context, state) {
                  return state.miniOn == true
                      ? SingleChildScrollView(
                          child: MIniPlayer(mysongs: state.songs))
                      : SizedBox();
                },
              ),
            );
          },
        );
      },
    );
  }
}
