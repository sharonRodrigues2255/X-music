import 'package:hive/hive.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
part 'my_playlist_model.g.dart';

@HiveType(typeId: 1)
class MyPlaylistModel extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  List<MySongModel> playlistSongs;

  MyPlaylistModel(
      {required this.id, required this.name, required this.playlistSongs});

  @override
  String toString() {
    return "Name:- $name || Songs:- $playlistSongs ";
  }
}
