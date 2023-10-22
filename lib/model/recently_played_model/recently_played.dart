import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicplayer_project/model/song_model/mysongmodel.dart';
part 'recently_played.g.dart';

@HiveType(typeId: 3)
class RecentlyPlayed extends HiveObject {
  @HiveField(0)
  final int index;

  @HiveField(1)
  final MySongModel song;

  RecentlyPlayed({required this.index, required this.song});
}
