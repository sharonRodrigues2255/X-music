import 'package:hive/hive.dart';
part 'mysongmodel.g.dart';

@HiveType(typeId: 2)
class MySongModel extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String displayName;

  @HiveField(3)
  String artist;

  @HiveField(4)
  String? url;

  @HiveField(6)
  int? duration;

  @HiveField(7)
  bool? favorite;

  @HiveField(8)
  int? playedTimes;

  @HiveField(9)
  int? playedTime;

  @HiveField(10)
  String? data;

  MySongModel(
      {required this.id,
      required this.title,
      required this.displayName,
      required this.artist,
      this.favorite = false,
      this.playedTimes = 0,
      this.playedTime,
      required this.duration,
      this.data = "",
      required this.url});
}
