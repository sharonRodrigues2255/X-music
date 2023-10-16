import 'package:musicplayer_project/model/song_model/mysongmodel.dart';

class MyPlaylistModel {
  String name;
  List<MySongModel> playlistSongs;
  MyPlaylistModel({required this.name, required this.playlistSongs});
}
