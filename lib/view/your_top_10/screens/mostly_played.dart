import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:musicplayer_project/bloc/player/player_bloc.dart';
import 'package:musicplayer_project/bloc/your_top_ten/your_top_ten_bloc.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
import 'package:musicplayer_project/view/player_screen/player_screen.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MostlyPlayed extends StatelessWidget {
  const MostlyPlayed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<YourTopTenBloc>(context).add(YourTopTenEvent.mostly());
    return BlocBuilder<YourTopTenBloc, YourTopTenState>(
      builder: (context, state) {
        List<MySongModel> mostlyPlayedSongs = List.from(state.songsLIst)
          ..sort(
            (a, b) => b.playedTimes!.compareTo(a.playedTimes!),
          );

        return ListView.builder(
          itemCount: mostlyPlayedSongs.length,
          itemBuilder: (context, index) {
            final song = mostlyPlayedSongs[index];
            print(song.playedTimes);

            return Card(
              child: ListTile(
                tileColor: Colors.black54,
                style: ListTileStyle.list,
                onTap: () {
                  Get.to(PlayerScreen(mysongs: mostlyPlayedSongs));
                  context.read<PlayerBloc>().add(PlayerEvent.playSong(
                      index: index, mysongs: mostlyPlayedSongs));
                },
                title: Text(song.displayName),
                subtitle: Text(song.artist),
                leading: QueryArtworkWidget(
                  id: song.id,
                  type: ArtworkType.AUDIO,
                  nullArtworkWidget: const CircleAvatar(
                    radius: 25,
                    child: Icon(
                      Icons.music_note,
                      size: 20,
                    ),
                  ),
                ),
                trailing: const Icon(Icons.more_vert),
              ),
            );
          },
        );
      },
    );
  }
}
