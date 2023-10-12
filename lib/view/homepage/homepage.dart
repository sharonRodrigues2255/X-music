import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/homepagebloc/homepage_bloc.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final homepagebloc = HomepageBloc();
    return BlocBuilder<HomepageBloc, HomepageState>(
      bloc: homepagebloc,
      builder: (context, state) {
        return state.when(initial: (mySongs) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Xusic"),
              centerTitle: true,
            ),
            body: ListView.builder(
              itemCount: mySongs.length,
              itemBuilder: (context, index) {
                final song = mySongs[index];
                return ListTile(
                  title: Text(song.displayName),
                  subtitle: Text(song.artist),
                  leading:
                      QueryArtworkWidget(id: song.id, type: ArtworkType.AUDIO),
                  trailing: Icon(Icons.more_vert),
                );
              },
            ),
          );
        });
      },
    );
  }
}
