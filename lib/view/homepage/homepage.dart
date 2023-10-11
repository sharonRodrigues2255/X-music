import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicplayer_project/bloc/homepagebloc/homepage_bloc.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homepagebloc = HomepageBloc();
    return BlocBuilder<HomepageBloc, HomepageState>(
      bloc: homepagebloc,
      builder: (context, state) {
        final songs = state.allSongs;
        return Scaffold(
          appBar: AppBar(
            title: Text("Xusic"),
            centerTitle: true,
          ),
          body: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (context, index) {
                final song = songs[index];
                return ListTile(
                  title: Text(song.displayName),
                  subtitle: Text(song.artist!),
                  leading:
                      QueryArtworkWidget(id: song.id, type: ArtworkType.AUDIO),
                  trailing: Icon(Icons.more_vert),
                );
              }),
        );
      },
    );
  }
}
